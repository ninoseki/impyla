#! /usr/bin/env bash

export IMPALA_REPO="/Users/laserson/cloudera/repos/Impala"
export IMPYLA_REPO="/Users/laserson/repos/impyla"

mkdir -p $IMPYLA_REPO/thrift

# copy over thrift dependencies
cp $IMPALA_REPO/common/thrift/cli_service.thrift $IMPYLA_REPO/thrift

##########################################
# MODIFIED VERSION OF ImpalaService.thrift
#
# I modify ImpalaService.thrift to comment out the Beeswax Service
#
#cp $IMPALA_REPO/common/thrift/ImpalaService.thrift $IMPYLA_REPO/thrift
#vim $IMPYLA_REPO/thrift/ImpalaService.thrift

# generate the python code
thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/cli_service.thrift
thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/ImpalaService.thrift


# pull together all the required thrift files into a local directory
# mkdir -p $IMPYLA_REPO/thrift
# mkdir -p $IMPYLA_REPO/thrift/share/fb303/if
# cp $IMPALA_REPO/common/thrift/*.thrift $IMPYLA_REPO/thrift
# cp $IMPALA_REPO/thirdparty/hive-0.10.0-cdh4.3.0/src/metastore/if/hive_metastore.thrift $IMPYLA_REPO/thrift
# cp $IMPALA_REPO/thirdparty/thrift-0.9.0/contrib/fb303/if/fb303.thrift $IMPYLA_REPO/thrift/share/fb303/if

# generate the python code
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Data.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/DataSinks.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Descriptors.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Exprs.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Frontend.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/ImpalaInternalService.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/ImpalaService.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/NetworkTest.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Partitions.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/PlanNodes.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Planner.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/RuntimeProfile.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/StateStoreService.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Status.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/Types.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/beeswax.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/cli_service.thrift
# thrift -gen py:new_style -out $IMPYLA_REPO/lib $IMPYLA_REPO/thrift/parquet.thrift
