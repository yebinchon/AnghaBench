
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_masks; scalar_t__ num_masks; int masks; } ;
typedef TYPE_1__* PS_Mask_Table ;
typedef int PS_Mask ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Memory ;


 int FT_FREE (int ) ;
 int ps_mask_done (int ,int ) ;

__attribute__((used)) static void
  ps_mask_table_done( PS_Mask_Table table,
                      FT_Memory memory )
  {
    FT_UInt count = table->max_masks;
    PS_Mask mask = table->masks;


    for ( ; count > 0; count--, mask++ )
      ps_mask_done( mask, memory );

    FT_FREE( table->masks );
    table->num_masks = 0;
    table->max_masks = 0;
  }
