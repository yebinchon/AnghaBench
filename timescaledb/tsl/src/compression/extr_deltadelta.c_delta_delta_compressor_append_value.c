
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef scalar_t__ int64 ;
struct TYPE_3__ {int nulls; int delta_delta; scalar_t__ prev_delta; scalar_t__ prev_val; } ;
typedef TYPE_1__ DeltaDeltaCompressor ;


 int simple8brle_compressor_append (int *,scalar_t__) ;
 scalar_t__ zig_zag_encode (scalar_t__) ;

void
delta_delta_compressor_append_value(DeltaDeltaCompressor *compressor, int64 next_val)
{
 uint64 delta;
 uint64 delta_delta;
 uint64 encoded;
 delta = ((uint64) next_val) - compressor->prev_val;
 delta_delta = delta - compressor->prev_delta;

 compressor->prev_val = next_val;
 compressor->prev_delta = delta;


 encoded = zig_zag_encode(delta_delta);


 simple8brle_compressor_append(&compressor->delta_delta, encoded);
 simple8brle_compressor_append(&compressor->nulls, 0);
}
