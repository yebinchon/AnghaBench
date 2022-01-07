
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_2__ {int * internal; } ;
typedef TYPE_1__ ExtendedCompressor ;
typedef int Datum ;
typedef int Compressor ;


 int DatumGetFloat8 (int ) ;
 int double_get_bits (int ) ;
 int * gorilla_compressor_alloc () ;
 int gorilla_compressor_append_value (int *,int ) ;

__attribute__((used)) static void
gorilla_compressor_append_double(Compressor *compressor, Datum val)
{
 ExtendedCompressor *extended = (ExtendedCompressor *) compressor;
 uint64 value = double_get_bits(DatumGetFloat8(val));
 if (extended->internal == ((void*)0))
  extended->internal = gorilla_compressor_alloc();

 gorilla_compressor_append_value(extended->internal, value);
}
