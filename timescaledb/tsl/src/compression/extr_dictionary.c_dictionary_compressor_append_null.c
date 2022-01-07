
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_nulls; int nulls; } ;
typedef TYPE_1__ DictionaryCompressor ;


 int simple8brle_compressor_append (int *,int) ;

void
dictionary_compressor_append_null(DictionaryCompressor *compressor)
{
 compressor->has_nulls = 1;
 simple8brle_compressor_append(&compressor->nulls, 1);
}
