
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int graph_column_has_commit (TYPE_1__*) ;

__attribute__((used)) static bool
continued_left(struct graph_row *row, int pos, int commit_pos)
{
 int i, start;

 if (pos < commit_pos)
  start = 0;
 else
  start = commit_pos;

 for (i = start; i < pos; i++) {
  if (!graph_column_has_commit(&row->columns[i]))
   continue;

  if (row->columns[pos].id == row->columns[i].id)
   return 1;
 }

 return 0;
}
