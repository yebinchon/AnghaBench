
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int order; } ;
struct TYPE_5__ {scalar_t__ max_hints; TYPE_2__* hints; } ;
typedef TYPE_1__* PSH_Hint_Table ;
typedef TYPE_2__* PSH_Hint ;
typedef scalar_t__ FT_UInt ;


 int psh_hint_deactivate (TYPE_2__*) ;

__attribute__((used)) static void
  psh_hint_table_deactivate( PSH_Hint_Table table )
  {
    FT_UInt count = table->max_hints;
    PSH_Hint hint = table->hints;


    for ( ; count > 0; count--, hint++ )
    {
      psh_hint_deactivate( hint );
      hint->order = -1;
    }
  }
