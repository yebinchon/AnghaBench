
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zilog_t ;
struct TYPE_8__ {int zdde_ref_blocks; int zdde_ref_dsize; int zdde_ref_psize; int zdde_ref_lsize; int zdde_key; } ;
typedef TYPE_1__ zdb_ddt_entry_t ;
struct TYPE_9__ {scalar_t__ zb_level; scalar_t__ zb_objset; } ;
typedef TYPE_2__ zbookmark_phys_t ;
typedef int u_longlong_t ;
typedef int spa_t ;
typedef int dnode_phys_t ;
typedef int blkptr_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 scalar_t__ BP_GET_CHECKSUM (int const*) ;
 scalar_t__ BP_GET_FILL (int const*) ;
 scalar_t__ BP_GET_LEVEL (int const*) ;
 scalar_t__ BP_GET_LSIZE (int const*) ;
 scalar_t__ BP_GET_PSIZE (int const*) ;
 int BP_GET_TYPE (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 scalar_t__ BP_IS_HOLE (int const*) ;
 scalar_t__ DMU_OT_IS_METADATA (int ) ;
 int UMEM_NOFAIL ;
 scalar_t__ ZB_DNODE_LEVEL ;
 scalar_t__ ZB_ROOT_LEVEL ;
 scalar_t__ ZIO_CHECKSUM_OFF ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_insert (int *,TYPE_1__*,int ) ;
 int avl_numnodes (int *) ;
 scalar_t__ bp_get_dsize_sync (int *,int const*) ;
 int ddt_key_fill (int *,int const*) ;
 int* dump_opt ;
 int printf (char*,int ,int ,int ) ;
 TYPE_1__* umem_zalloc (int,int ) ;

__attribute__((used)) static int
zdb_ddt_add_cb(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 avl_tree_t *t = arg;
 avl_index_t where;
 zdb_ddt_entry_t *zdde, zdde_search;

 if (zb->zb_level == ZB_DNODE_LEVEL || BP_IS_HOLE(bp) ||
     BP_IS_EMBEDDED(bp))
  return (0);

 if (dump_opt['S'] > 1 && zb->zb_level == ZB_ROOT_LEVEL) {
  (void) printf("traversing objset %llu, %llu objects, "
      "%lu blocks so far\n",
      (u_longlong_t)zb->zb_objset,
      (u_longlong_t)BP_GET_FILL(bp),
      avl_numnodes(t));
 }

 if (BP_IS_HOLE(bp) || BP_GET_CHECKSUM(bp) == ZIO_CHECKSUM_OFF ||
     BP_GET_LEVEL(bp) > 0 || DMU_OT_IS_METADATA(BP_GET_TYPE(bp)))
  return (0);

 ddt_key_fill(&zdde_search.zdde_key, bp);

 zdde = avl_find(t, &zdde_search, &where);

 if (zdde == ((void*)0)) {
  zdde = umem_zalloc(sizeof (*zdde), UMEM_NOFAIL);
  zdde->zdde_key = zdde_search.zdde_key;
  avl_insert(t, zdde, where);
 }

 zdde->zdde_ref_blocks += 1;
 zdde->zdde_ref_lsize += BP_GET_LSIZE(bp);
 zdde->zdde_ref_psize += BP_GET_PSIZE(bp);
 zdde->zdde_ref_dsize += bp_get_dsize_sync(spa, bp);

 return (0);
}
