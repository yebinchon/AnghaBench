
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * (* compressor_for_type ) (int ) ;} ;
typedef int Oid ;
typedef int Compressor ;
typedef size_t CompressionAlgorithms ;


 int ERROR ;
 size_t _END_COMPRESSION_ALGORITHMS ;
 TYPE_1__* definitions ;
 int elog (int ,char*,size_t) ;
 int * stub1 (int ) ;

__attribute__((used)) static Compressor *
compressor_for_algorithm_and_type(CompressionAlgorithms algorithm, Oid type)
{
 if (algorithm >= _END_COMPRESSION_ALGORITHMS)
  elog(ERROR, "invalid compression algorithm %d", algorithm);

 return definitions[algorithm].compressor_for_type(type);
}
