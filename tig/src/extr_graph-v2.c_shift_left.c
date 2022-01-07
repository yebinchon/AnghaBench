
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int continued_down (struct graph_row*,struct graph_row*,int) ;
 int graph_column_has_commit (TYPE_1__*) ;

__attribute__((used)) static bool
shift_left(struct graph_row *row, struct graph_row *prev_row, int pos)
{
 int i;

 if (!graph_column_has_commit(&row->columns[pos]))
  return 0;

 for (i = pos - 1; i >= 0; i--) {
  if (!graph_column_has_commit(&row->columns[i]))
   continue;

  if (row->columns[i].id != row->columns[pos].id)
   continue;

  if (!continued_down(prev_row, row, i))
   return 1;

  break;
 }

 return 0;
}
