
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** gn_child; } ;
typedef TYPE_1__ zio_gang_node_t ;


 int SPA_GBH_NBLKPTRS ;
 int zio_gang_node_free (TYPE_1__**) ;

__attribute__((used)) static void
zio_gang_tree_free(zio_gang_node_t **gnpp)
{
 zio_gang_node_t *gn = *gnpp;

 if (gn == ((void*)0))
  return;

 for (int g = 0; g < SPA_GBH_NBLKPTRS; g++)
  zio_gang_tree_free(&gn->gn_child[g]);

 zio_gang_node_free(gnpp);
}
