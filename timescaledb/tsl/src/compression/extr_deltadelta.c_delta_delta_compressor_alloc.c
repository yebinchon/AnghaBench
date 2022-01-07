
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nulls; int delta_delta; } ;
typedef TYPE_1__ DeltaDeltaCompressor ;


 TYPE_1__* palloc0 (int) ;
 int simple8brle_compressor_init (int *) ;

DeltaDeltaCompressor *
delta_delta_compressor_alloc(void)
{
 DeltaDeltaCompressor *compressor = palloc0(sizeof(*compressor));
 simple8brle_compressor_init(&compressor->delta_delta);
 simple8brle_compressor_init(&compressor->nulls);
 return compressor;
}
