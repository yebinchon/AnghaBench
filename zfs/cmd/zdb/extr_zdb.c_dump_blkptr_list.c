
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uncomp ;
typedef scalar_t__ uint64_t ;
struct TYPE_13__ {TYPE_1__* spa_dsl_pool; } ;
typedef TYPE_3__ spa_t ;
typedef int entries ;
struct TYPE_15__ {scalar_t__ bpo_object; } ;
struct TYPE_14__ {int dl_tree; TYPE_2__* dl_phys; TYPE_5__ dl_bpobj; scalar_t__ dl_oldfmt; int dl_object; int dl_os; } ;
typedef TYPE_4__ dsl_deadlist_t ;
typedef int comp ;
typedef int bytes ;
struct TYPE_12__ {int dl_uncomp; int dl_comp; int dl_used; } ;
struct TYPE_11__ {scalar_t__ dp_empty_bpobj; } ;


 int CTASSERT (int) ;
 int NN_NUMBUF_SZ ;
 int avl_numnodes (int *) ;
 int bpobj_count_refd (TYPE_5__*) ;
 TYPE_3__* dmu_objset_spa (int ) ;
 int dsl_deadlist_entry_count_refd ;
 int dsl_deadlist_entry_dump ;
 int dsl_deadlist_iterate (TYPE_4__*,int ,TYPE_3__*) ;
 int dump_full_bpobj (TYPE_5__*,char*,int ) ;
 int* dump_opt ;
 int mos_obj_refd (int ) ;
 int printf (char*,...) ;
 int zdb_nicenum (int ,char*,int) ;

__attribute__((used)) static void
dump_blkptr_list(dsl_deadlist_t *dl, char *name)
{
 char bytes[32];
 char comp[32];
 char uncomp[32];
 char entries[32];
 spa_t *spa = dmu_objset_spa(dl->dl_os);
 uint64_t empty_bpobj = spa->spa_dsl_pool->dp_empty_bpobj;

 if (dl->dl_oldfmt) {
  if (dl->dl_bpobj.bpo_object != empty_bpobj)
   bpobj_count_refd(&dl->dl_bpobj);
 } else {
  mos_obj_refd(dl->dl_object);
  dsl_deadlist_iterate(dl, dsl_deadlist_entry_count_refd, spa);
 }


 CTASSERT(sizeof (bytes) >= NN_NUMBUF_SZ);
 CTASSERT(sizeof (comp) >= NN_NUMBUF_SZ);
 CTASSERT(sizeof (uncomp) >= NN_NUMBUF_SZ);
 CTASSERT(sizeof (entries) >= NN_NUMBUF_SZ);

 if (dump_opt['d'] < 3)
  return;

 if (dl->dl_oldfmt) {
  dump_full_bpobj(&dl->dl_bpobj, "old-format deadlist", 0);
  return;
 }

 zdb_nicenum(dl->dl_phys->dl_used, bytes, sizeof (bytes));
 zdb_nicenum(dl->dl_phys->dl_comp, comp, sizeof (comp));
 zdb_nicenum(dl->dl_phys->dl_uncomp, uncomp, sizeof (uncomp));
 zdb_nicenum(avl_numnodes(&dl->dl_tree), entries, sizeof (entries));
 (void) printf("\n    %s: %s (%s/%s comp), %s entries\n",
     name, bytes, comp, uncomp, entries);

 if (dump_opt['d'] < 4)
  return;

 (void) printf("\n");

 dsl_deadlist_iterate(dl, dsl_deadlist_entry_dump, ((void*)0));
}
