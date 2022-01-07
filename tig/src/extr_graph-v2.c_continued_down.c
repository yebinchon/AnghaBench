
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct graph_row {TYPE_2__* columns; } ;
struct TYPE_3__ {scalar_t__ shift_left; } ;
struct TYPE_4__ {scalar_t__ id; TYPE_1__ symbol; } ;



__attribute__((used)) static bool
continued_down(struct graph_row *row, struct graph_row *next_row, int pos)
{
 if (row->columns[pos].id != next_row->columns[pos].id)
  return 0;

 if (row->columns[pos].symbol.shift_left)
  return 0;

 return 1;
}
