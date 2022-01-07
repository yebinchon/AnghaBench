
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * internal; int element_type; } ;
typedef TYPE_1__ ExtendedCompressor ;
typedef int Datum ;
typedef int Compressor ;


 int * dictionary_compressor_alloc (int ) ;
 int dictionary_compressor_append (int *,int ) ;

__attribute__((used)) static void
dictionary_compressor_append_datum(Compressor *compressor, Datum val)
{
 ExtendedCompressor *extended = (ExtendedCompressor *) compressor;
 if (extended->internal == ((void*)0))
  extended->internal = dictionary_compressor_alloc(extended->element_type);

 dictionary_compressor_append(extended->internal, val);
}
