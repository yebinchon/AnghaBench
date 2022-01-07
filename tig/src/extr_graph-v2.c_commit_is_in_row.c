
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {char const* id; } ;


 int graph_column_has_commit (TYPE_1__*) ;

__attribute__((used)) static bool
commit_is_in_row(const char *id, struct graph_row *row)
{
 int i;

 for (i = 0; i < row->size; i++) {
  if (!graph_column_has_commit(&row->columns[i]))
   continue;

  if (id == row->columns[i].id)
   return 1;
 }
 return 0;
}
