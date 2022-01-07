
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {TYPE_1__* sizes; } ;
struct TYPE_4__ {int num_elements; } ;
typedef TYPE_2__ ArrayCompressorSerializationInfo ;



uint32
array_compression_serialization_num_elements(ArrayCompressorSerializationInfo *info)
{
 return info->sizes->num_elements;
}
