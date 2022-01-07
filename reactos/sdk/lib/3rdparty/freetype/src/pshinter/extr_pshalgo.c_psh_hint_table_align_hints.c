
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int scale_delta; int scale_mult; } ;
struct TYPE_9__ {TYPE_3__* dimension; } ;
struct TYPE_8__ {scalar_t__ max_hints; int hints; } ;
typedef TYPE_1__* PSH_Hint_Table ;
typedef int PSH_Hint ;
typedef int PSH_Glyph ;
typedef TYPE_2__* PSH_Globals ;
typedef TYPE_3__* PSH_Dimension ;
typedef scalar_t__ FT_UInt ;
typedef size_t FT_Int ;
typedef int FT_Fixed ;


 scalar_t__ ps_debug_no_horz_hints ;
 scalar_t__ ps_debug_no_vert_hints ;
 int ps_simple_scale (TYPE_1__*,int ,int ,size_t) ;
 int psh_hint_align (int ,TYPE_2__*,size_t,int ) ;

__attribute__((used)) static void
  psh_hint_table_align_hints( PSH_Hint_Table table,
                              PSH_Globals globals,
                              FT_Int dimension,
                              PSH_Glyph glyph )
  {
    PSH_Hint hint;
    FT_UInt count;
    hint = table->hints;
    count = table->max_hints;

    for ( ; count > 0; count--, hint++ )
      psh_hint_align( hint, globals, dimension, glyph );
  }
