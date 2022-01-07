
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
struct TYPE_7__ {int * sizes; } ;
typedef TYPE_1__ ArrayCompressorSerializationInfo ;
typedef TYPE_2__ ArrayCompressor ;


 void* array_compressed_from_serialization_info (TYPE_1__*,int ) ;
 TYPE_1__* array_compressor_get_serialization_info (TYPE_2__*) ;

void *
array_compressor_finish(ArrayCompressor *compressor)
{
 ArrayCompressorSerializationInfo *info = array_compressor_get_serialization_info(compressor);
 if (info->sizes == ((void*)0))
  return ((void*)0);

 return array_compressed_from_serialization_info(info, compressor->type);
}
