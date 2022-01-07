
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int style; int line_count; int selection_end; TYPE_1__* first_line_def; } ;
struct TYPE_4__ {int length; struct TYPE_4__* next; } ;
typedef TYPE_1__ LINEDEF ;
typedef int INT ;
typedef TYPE_2__ EDITSTATE ;


 int ES_MULTILINE ;

__attribute__((used)) static INT EDIT_EM_LineIndex(const EDITSTATE *es, INT line)
{
 INT line_index;
 const LINEDEF *line_def;

 if (!(es->style & ES_MULTILINE))
  return 0;
 if (line >= es->line_count)
  return -1;

 line_index = 0;
 line_def = es->first_line_def;
 if (line == -1) {
  INT index = es->selection_end - line_def->length;
  while ((index >= 0) && line_def->next) {
   line_index += line_def->length;
   line_def = line_def->next;
   index -= line_def->length;
  }
 } else {
  while (line > 0) {
   line_index += line_def->length;
   line_def = line_def->next;
   line--;
  }
 }
 return line_index;
}
