#!/bin/bash
# Copyright (c) 2017 Cisco and/or its affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# leave only contivvpp images tagged as latest
sudo docker images | grep contivvpp | grep -v latest | awk '{print $3}' | xargs sudo docker rmi

# delete all build-only images
sudo docker images | grep 'prod-contiv-\|dev-contiv-' | awk '{print $3}' | xargs sudo docker rmi