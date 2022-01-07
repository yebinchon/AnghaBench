
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int * internal; } ;
typedef TYPE_1__ ExtendedCompressor ;
typedef int Datum ;
typedef int Compressor ;


 scalar_t__ DatumGetInt32 (int ) ;
 int * gorilla_compressor_alloc () ;
 int gorilla_compressor_append_value (int *,int ) ;

__attribute__((used)) static void
gorilla_compressor_append_int32(Compressor *compressor, Datum val)
{
 ExtendedCompressor *extended = (ExtendedCompressor *) compressor;
 if (extended->internal == ((void*)0))
  extended->internal = gorilla_compressor_alloc();

 gorilla_compressor_append_value(extended->internal, (uint32) DatumGetInt32(val));
}
