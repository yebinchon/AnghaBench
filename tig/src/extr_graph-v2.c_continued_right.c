
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_row {int size; TYPE_1__* columns; } ;
struct TYPE_2__ {scalar_t__ id; } ;



__attribute__((used)) static bool
continued_right(struct graph_row *row, int pos, int commit_pos)
{
 int i, end;

 if (pos < commit_pos)
  end = commit_pos;
 else
  end = row->size;

 for (i = pos + 1; i < end; i++) {
  if (row->columns[pos].id == row->columns[i].id)
   return 1;
 }

 return 0;
}
