
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {char const* id; } ;



__attribute__((used)) static void
graph_row_clear_commit(struct graph_row *row, const char *id)
{
 int i;

 for (i = 0; i < row->size; i++) {
  if (row->columns[i].id == id) {
   row->columns[i].id = ((void*)0);
  }
 }
}
