#
# Cookbook Name:: mine
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
packages = case node['platform_family']
  when "debian", "ubuntu"
    %w{lv htop tree}.each do |pkg|
      package pkg do
        action :install
      end
    end
  when "rhel", "fedora", "centos"
    %w{tree}.each do |pkg|
      package pkg do
        action :install
      end
    end
  end

#if platform?("ubuntu", "debian")
#  package packages do
#    action :install
#  end
#end
#if platform?("centos", "fedora")
#  package packages do
#    action :install
#  end
#end
