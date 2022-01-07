
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * ssa; TYPE_1__* first_line_def; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ LINEDEF ;
typedef TYPE_2__ EDITSTATE ;


 int EDIT_InvalidateUniscribeData_linedef (TYPE_1__*) ;
 int ScriptStringFree (int **) ;

__attribute__((used)) static inline void EDIT_InvalidateUniscribeData(EDITSTATE *es)
{
 LINEDEF *line_def = es->first_line_def;
 while (line_def)
 {
  EDIT_InvalidateUniscribeData_linedef(line_def);
  line_def = line_def->next;
 }
 if (es->ssa)
 {
  ScriptStringFree(&es->ssa);
  es->ssa = ((void*)0);
 }
}
