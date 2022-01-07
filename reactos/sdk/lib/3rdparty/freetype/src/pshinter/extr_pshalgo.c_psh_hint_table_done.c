
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sort_global; scalar_t__ max_hints; scalar_t__ num_hints; int hints; int sort; int * zone; scalar_t__ num_zones; int zones; } ;
typedef TYPE_1__* PSH_Hint_Table ;
typedef int FT_Memory ;


 int FT_FREE (int ) ;

__attribute__((used)) static void
  psh_hint_table_done( PSH_Hint_Table table,
                       FT_Memory memory )
  {
    FT_FREE( table->zones );
    table->num_zones = 0;
    table->zone = ((void*)0);

    FT_FREE( table->sort );
    FT_FREE( table->hints );
    table->num_hints = 0;
    table->max_hints = 0;
    table->sort_global = ((void*)0);
  }
