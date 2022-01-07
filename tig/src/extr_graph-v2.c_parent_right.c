
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int graph_column_has_commit (TYPE_1__*) ;

__attribute__((used)) static bool
parent_right(struct graph_row *parents, struct graph_row *row, struct graph_row *next_row, int pos)
{
 int parent, i;

 for (parent = 0; parent < parents->size; parent++) {
  if (!graph_column_has_commit(&parents->columns[parent]))
   continue;

  for (i = pos + 1; i < next_row->size; i++) {
   if (parents->columns[parent].id != next_row->columns[i].id)
    continue;

   if (parents->columns[parent].id != row->columns[i].id)
    return 1;
  }
 }

 return 0;
}
