# Copyright 2020 The TensorStore Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load(
    "//third_party:repo.bzl",
    "third_party_http_archive",
)
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repo():
    maybe(
        third_party_http_archive,
        name = "com_google_absl",
        sha256 = "cda0ac8640183d1f1de3632354dd6a4dcfe2548d1aa66f3f099fd6b626c77f54",
        strip_prefix = "abseil-cpp-b699707f0bfeae034e36cdfd909b66b0fcab696c",
        urls = [
            "https://github.com/abseil/abseil-cpp/archive/b699707f0bfeae034e36cdfd909b66b0fcab696c.tar.gz",  # master(2021-08-12)
        ],
    )
