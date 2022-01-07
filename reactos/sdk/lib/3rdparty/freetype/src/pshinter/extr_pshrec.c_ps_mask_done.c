
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end_point; scalar_t__ max_bits; scalar_t__ num_bits; int bytes; } ;
typedef TYPE_1__* PS_Mask ;
typedef int FT_Memory ;


 int FT_FREE (int ) ;

__attribute__((used)) static void
  ps_mask_done( PS_Mask mask,
                FT_Memory memory )
  {
    FT_FREE( mask->bytes );
    mask->num_bits = 0;
    mask->max_bits = 0;
    mask->end_point = 0;
  }
