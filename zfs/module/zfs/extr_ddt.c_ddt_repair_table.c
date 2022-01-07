
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int zio_t ;
typedef int spa_t ;
struct TYPE_17__ {int ddt_checksum; int ddt_repair_tree; int * ddt_spa; } ;
typedef TYPE_1__ ddt_t ;
struct TYPE_18__ {int dde_key; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int blkptr_t ;
typedef int avl_tree_t ;


 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 TYPE_2__* avl_first (int *) ;
 int avl_remove (int *,TYPE_2__*) ;
 int ddt_bp_create (int ,int *,int *,int *) ;
 int ddt_enter (TYPE_1__*) ;
 int ddt_exit (TYPE_1__*) ;
 int ddt_repair_done (TYPE_1__*,TYPE_2__*) ;
 int ddt_repair_entry (TYPE_1__*,TYPE_2__*,TYPE_2__*,int *) ;
 TYPE_2__* ddt_repair_start (TYPE_1__*,int *) ;
 int spa_sync_pass (int *) ;

__attribute__((used)) static void
ddt_repair_table(ddt_t *ddt, zio_t *rio)
{
 spa_t *spa = ddt->ddt_spa;
 ddt_entry_t *dde, *rdde_next, *rdde;
 avl_tree_t *t = &ddt->ddt_repair_tree;
 blkptr_t blk;

 if (spa_sync_pass(spa) > 1)
  return;

 ddt_enter(ddt);
 for (rdde = avl_first(t); rdde != ((void*)0); rdde = rdde_next) {
  rdde_next = AVL_NEXT(t, rdde);
  avl_remove(&ddt->ddt_repair_tree, rdde);
  ddt_exit(ddt);
  ddt_bp_create(ddt->ddt_checksum, &rdde->dde_key, ((void*)0), &blk);
  dde = ddt_repair_start(ddt, &blk);
  ddt_repair_entry(ddt, dde, rdde, rio);
  ddt_repair_done(ddt, dde);
  ddt_enter(ddt);
 }
 ddt_exit(ddt);
}
