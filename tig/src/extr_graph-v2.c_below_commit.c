
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* columns; } ;
struct TYPE_6__ {TYPE_1__* columns; } ;
struct graph_v2 {int prev_position; TYPE_4__ prev_row; TYPE_2__ row; } ;
struct TYPE_7__ {scalar_t__ id; } ;
struct TYPE_5__ {scalar_t__ id; } ;



__attribute__((used)) static bool
below_commit(int pos, struct graph_v2 *graph)
{
 if (pos != graph->prev_position)
  return 0;

 if (graph->row.columns[pos].id != graph->prev_row.columns[pos].id)
  return 0;

 return 1;
}
