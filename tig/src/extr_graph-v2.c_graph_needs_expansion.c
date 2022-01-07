
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct graph_v2 {scalar_t__ position; TYPE_2__ row; TYPE_1__ parents; } ;



__attribute__((used)) static bool
graph_needs_expansion(struct graph_v2 *graph)
{
 return graph->position + graph->parents.size > graph->row.size;
}
