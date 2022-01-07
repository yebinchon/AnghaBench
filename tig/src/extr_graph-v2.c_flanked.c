
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {char const* id; } ;



__attribute__((used)) static bool
flanked(struct graph_row *row, int pos, int commit_pos, const char *commit_id)
{
 int i, start, end;

 if (pos < commit_pos) {
  start = 0;
  end = pos;
 } else {
  start = pos + 1;
  end = row->size;
 }

 for (i = start; i < end; i++) {
  if (row->columns[i].id == commit_id)
   return 1;
 }

 return 0;
}
