
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef scalar_t__ data_type_t ;


 scalar_t__ DATA_TYPE_BOOLEAN_ARRAY ;
 scalar_t__ DATA_TYPE_BYTE_ARRAY ;
 scalar_t__ DATA_TYPE_INT16_ARRAY ;
 scalar_t__ DATA_TYPE_INT32_ARRAY ;
 scalar_t__ DATA_TYPE_INT64_ARRAY ;
 scalar_t__ DATA_TYPE_INT8_ARRAY ;
 scalar_t__ DATA_TYPE_NVLIST_ARRAY ;
 scalar_t__ DATA_TYPE_STRING_ARRAY ;
 scalar_t__ DATA_TYPE_UINT16_ARRAY ;
 scalar_t__ DATA_TYPE_UINT32_ARRAY ;
 scalar_t__ DATA_TYPE_UINT64_ARRAY ;
 scalar_t__ DATA_TYPE_UINT8_ARRAY ;
 scalar_t__ NVP_TYPE (int *) ;

int
nvpair_type_is_array(nvpair_t *nvp)
{
 data_type_t type = NVP_TYPE(nvp);

 if ((type == DATA_TYPE_BYTE_ARRAY) ||
     (type == DATA_TYPE_INT8_ARRAY) ||
     (type == DATA_TYPE_UINT8_ARRAY) ||
     (type == DATA_TYPE_INT16_ARRAY) ||
     (type == DATA_TYPE_UINT16_ARRAY) ||
     (type == DATA_TYPE_INT32_ARRAY) ||
     (type == DATA_TYPE_UINT32_ARRAY) ||
     (type == DATA_TYPE_INT64_ARRAY) ||
     (type == DATA_TYPE_UINT64_ARRAY) ||
     (type == DATA_TYPE_BOOLEAN_ARRAY) ||
     (type == DATA_TYPE_STRING_ARRAY) ||
     (type == DATA_TYPE_NVLIST_ARRAY))
  return (1);
 return (0);

}
