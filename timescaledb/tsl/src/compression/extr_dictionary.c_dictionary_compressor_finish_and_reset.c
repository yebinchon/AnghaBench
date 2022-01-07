
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * internal; } ;
typedef TYPE_1__ ExtendedCompressor ;
typedef int Compressor ;


 void* dictionary_compressor_finish (int *) ;
 int pfree (int *) ;

__attribute__((used)) static void *
dictionary_compressor_finish_and_reset(Compressor *compressor)
{
 ExtendedCompressor *extended = (ExtendedCompressor *) compressor;
 void *compressed = dictionary_compressor_finish(extended->internal);
 pfree(extended->internal);
 extended->internal = ((void*)0);
 return compressed;
}
