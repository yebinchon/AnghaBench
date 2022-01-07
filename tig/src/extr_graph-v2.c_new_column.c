
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int graph_column_has_commit (TYPE_1__*) ;

__attribute__((used)) static bool
new_column(struct graph_row *row, struct graph_row *prev_row, int pos)
{
 int i;

 if (!graph_column_has_commit(&prev_row->columns[pos]))
  return 1;

 for (i = pos; i < row->size; i++) {
  if (row->columns[pos].id == prev_row->columns[i].id)
   return 0;
 }

 return 1;
}
