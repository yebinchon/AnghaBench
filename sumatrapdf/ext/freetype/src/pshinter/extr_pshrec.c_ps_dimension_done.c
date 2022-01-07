
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hints; int masks; int counters; } ;
typedef TYPE_1__* PS_Dimension ;
typedef int FT_Memory ;


 int ps_hint_table_done (int *,int ) ;
 int ps_mask_table_done (int *,int ) ;

__attribute__((used)) static void
  ps_dimension_done( PS_Dimension dimension,
                     FT_Memory memory )
  {
    ps_mask_table_done( &dimension->counters, memory );
    ps_mask_table_done( &dimension->masks, memory );
    ps_hint_table_done( &dimension->hints, memory );
  }
