
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct bmap_rb_extent {int dummy; } ;



__attribute__((used)) inline static struct bmap_rb_extent *node_to_extent(struct rb_node *node)
{






 return (struct bmap_rb_extent *) node;
}
