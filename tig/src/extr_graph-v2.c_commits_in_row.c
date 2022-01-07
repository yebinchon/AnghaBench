
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph_row {int size; int * columns; } ;


 scalar_t__ graph_column_has_commit (int *) ;

__attribute__((used)) static int
commits_in_row(struct graph_row *row)
{
 int count = 0;
 int i;

 for (i = 0; i < row->size;i++) {
  if (graph_column_has_commit(&row->columns[i]))
   count++;
 }

 return count;
}
