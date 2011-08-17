# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'spec_helper'

module AWS
  class IAM

    describe GroupPolicyCollection do

      it_should_behave_like "iam policy collection" do

        let(:group)         { Group.new("grpname", :config => config) }
        let(:policies)      { GroupPolicyCollection.new(group) }
        let(:resource_name) { :group }
        let(:resource_opts) {{ :group_name => "grpname" }}

      end

    end

  end
end
