# Copyright 2014 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# TODO(erjohnso): use for attach/detach
actions :create, :delete #, :attach, :detach

# set 'wait_for true' to block on request
attribute :wait_for,              :kind_of => [TrueClass, FalseClass], :default => false

attribute :name,                  :kind_of => String
attribute :device_name,           :kind_of => String
attribute :zone_name,             :kind_of => String
attribute :description,           :kind_of => String
attribute :size_gb,               :kind_of => Integer
attribute :source_snapshot,       :kind_of => String
attribute :source_image,          :kind_of => String
attribute :boot,                  :kind_of => [ TrueClass, FalseClass ]
attribute :type,                  :kind_of => String, :default => "PERSISTENT"
attribute :mode,                  :kind_of => String, :default => "READ_WRITE", :equal_to => ["READ_WRITE", "READ_ONLY"]
# TODO(erjohnso): use for attach/detach
#attribute :instance_name,         :kind_of => String

def initialize(*args)
  super
  @action = :create
end