
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * internal; } ;
typedef TYPE_1__ ExtendedCompressor ;
typedef int Datum ;
typedef int Compressor ;


 int DatumGetTimestampTz (int ) ;
 int * delta_delta_compressor_alloc () ;
 int delta_delta_compressor_append_value (int *,int ) ;

__attribute__((used)) static void
deltadelta_compressor_append_timestamptz(Compressor *compressor, Datum val)
{
 ExtendedCompressor *extended = (ExtendedCompressor *) compressor;
 if (extended->internal == ((void*)0))
  extended->internal = delta_delta_compressor_alloc();

 delta_delta_compressor_append_value(extended->internal, DatumGetTimestampTz(val));
}
