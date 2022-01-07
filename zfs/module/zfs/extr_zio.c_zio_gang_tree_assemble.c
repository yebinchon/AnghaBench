
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int io_bookmark; int io_priority; int io_spa; struct TYPE_10__* io_gang_leader; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_11__ {int gn_gbh; } ;
typedef TYPE_2__ zio_gang_node_t ;
typedef int blkptr_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 int BP_IS_GANG (int *) ;
 int SPA_GANGBLOCKSIZE ;
 int ZIO_GANG_CHILD_FLAGS (TYPE_1__*) ;
 int * abd_get_from_buf (int ,int ) ;
 TYPE_2__* zio_gang_node_alloc (TYPE_2__**) ;
 int zio_gang_tree_assemble_done ;
 int zio_nowait (int ) ;
 int zio_read (TYPE_1__*,int ,int *,int *,int ,int ,TYPE_2__*,int ,int ,int *) ;

__attribute__((used)) static void
zio_gang_tree_assemble(zio_t *gio, blkptr_t *bp, zio_gang_node_t **gnpp)
{
 zio_gang_node_t *gn = zio_gang_node_alloc(gnpp);
 abd_t *gbh_abd = abd_get_from_buf(gn->gn_gbh, SPA_GANGBLOCKSIZE);

 ASSERT(gio->io_gang_leader == gio);
 ASSERT(BP_IS_GANG(bp));

 zio_nowait(zio_read(gio, gio->io_spa, bp, gbh_abd, SPA_GANGBLOCKSIZE,
     zio_gang_tree_assemble_done, gn, gio->io_priority,
     ZIO_GANG_CHILD_FLAGS(gio), &gio->io_bookmark));
}
