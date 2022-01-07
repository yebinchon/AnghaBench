
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compressed_data_storage; } ;
typedef int CompressionStorage ;
typedef size_t CompressionAlgorithms ;


 int ERROR ;
 size_t _END_COMPRESSION_ALGORITHMS ;
 size_t _INVALID_COMPRESSION_ALGORITHM ;
 TYPE_1__* definitions ;
 int elog (int ,char*,size_t) ;

extern CompressionStorage
compression_get_toast_storage(CompressionAlgorithms algorithm)
{
 if (algorithm == _INVALID_COMPRESSION_ALGORITHM || algorithm >= _END_COMPRESSION_ALGORITHMS)
  elog(ERROR, "invalid compression algorithm %d", algorithm);
 return definitions[algorithm].compressed_data_storage;
}
