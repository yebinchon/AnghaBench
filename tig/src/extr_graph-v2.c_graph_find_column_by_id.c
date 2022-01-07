
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {size_t size; TYPE_1__* columns; } ;
struct TYPE_2__ {char const* id; } ;


 int graph_column_has_commit (TYPE_1__*) ;

__attribute__((used)) static size_t
graph_find_column_by_id(struct graph_row *row, const char *id)
{
 size_t free_column = row->size;
 size_t i;

 for (i = 0; i < row->size; i++) {
  if (!graph_column_has_commit(&row->columns[i]) && free_column == row->size)
   free_column = i;
  else if (row->columns[i].id == id)
   return i;
 }

 return free_column;
}
