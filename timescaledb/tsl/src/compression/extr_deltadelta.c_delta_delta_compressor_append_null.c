
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_nulls; int nulls; } ;
typedef TYPE_1__ DeltaDeltaCompressor ;


 int simple8brle_compressor_append (int *,int) ;

void
delta_delta_compressor_append_null(DeltaDeltaCompressor *compressor)
{
 compressor->has_nulls = 1;
 simple8brle_compressor_append(&compressor->nulls, 1);
}
