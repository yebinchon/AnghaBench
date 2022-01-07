
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int low; int high; int out; scalar_t__ many; } ;
typedef TYPE_1__ cmap_splay ;



__attribute__((used)) static void
count_node_types(cmap_splay *node, void *arg)
{
 int *counts = (int *)arg;

 if (node->many)
  counts[2]++;
 else if (node->low <= 0xffff && node->high <= 0xFFFF && node->out <= 0xFFFF)
  counts[0]++;
 else
  counts[1]++;
}
