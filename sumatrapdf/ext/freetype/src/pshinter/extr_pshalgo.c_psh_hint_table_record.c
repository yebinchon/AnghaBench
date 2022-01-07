
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* parent; } ;
struct TYPE_8__ {scalar_t__ hints; scalar_t__ max_hints; scalar_t__ num_hints; TYPE_2__** sort_global; } ;
typedef TYPE_1__* PSH_Hint_Table ;
typedef TYPE_2__* PSH_Hint ;
typedef scalar_t__ FT_UInt ;


 int FT_TRACE0 (char*) ;
 int psh_hint_activate (TYPE_2__*) ;
 scalar_t__ psh_hint_is_active (TYPE_2__*) ;
 scalar_t__ psh_hint_overlap (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
  psh_hint_table_record( PSH_Hint_Table table,
                         FT_UInt idx )
  {
    PSH_Hint hint = table->hints + idx;


    if ( idx >= table->max_hints )
    {
      FT_TRACE0(( "psh_hint_table_record: invalid hint index %d\n", idx ));
      return;
    }


    if ( psh_hint_is_active( hint ) )
      return;

    psh_hint_activate( hint );



    {
      PSH_Hint* sorted = table->sort_global;
      FT_UInt count = table->num_hints;
      PSH_Hint hint2;


      hint->parent = ((void*)0);
      for ( ; count > 0; count--, sorted++ )
      {
        hint2 = sorted[0];

        if ( psh_hint_overlap( hint, hint2 ) )
        {
          hint->parent = hint2;
          break;
        }
      }
    }

    if ( table->num_hints < table->max_hints )
      table->sort_global[table->num_hints++] = hint;
    else
      FT_TRACE0(( "psh_hint_table_record: too many sorted hints!  BUG!\n" ));
  }
