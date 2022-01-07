
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
struct TYPE_15__ {scalar_t__ ddb_class; size_t ddb_checksum; scalar_t__ ddb_cursor; scalar_t__ ddb_type; } ;
struct TYPE_12__ {scalar_t__ scn_ddt_class_max; TYPE_5__ scn_ddt_bookmark; } ;
struct TYPE_13__ {TYPE_2__ scn_phys; scalar_t__ scn_suspending; TYPE_1__* scn_dp; } ;
typedef TYPE_3__ dsl_scan_t ;
typedef int dmu_tx_t ;
struct TYPE_14__ {int ddt_tree; } ;
typedef TYPE_4__ ddt_t ;
typedef int ddt_entry_t ;
typedef TYPE_5__ ddt_bookmark_t ;
struct TYPE_16__ {TYPE_4__** spa_ddt; } ;
struct TYPE_11__ {TYPE_9__* dp_spa; } ;


 int ASSERT (int) ;
 int ENOENT ;
 int * avl_first (int *) ;
 int bzero (int *,int) ;
 int ddt_walk (TYPE_9__*,TYPE_5__*,int *) ;
 int dprintf (char*,int ,int ,int ,int ) ;
 scalar_t__ dsl_scan_check_suspend (TYPE_3__*,int *) ;
 int dsl_scan_ddt_entry (TYPE_3__*,size_t,int *,int *) ;
 int zfs_dbgmsg (char*,int ,int,int) ;

__attribute__((used)) static void
dsl_scan_ddt(dsl_scan_t *scn, dmu_tx_t *tx)
{
 ddt_bookmark_t *ddb = &scn->scn_phys.scn_ddt_bookmark;
 ddt_entry_t dde;
 int error;
 uint64_t n = 0;

 bzero(&dde, sizeof (ddt_entry_t));

 while ((error = ddt_walk(scn->scn_dp->dp_spa, ddb, &dde)) == 0) {
  ddt_t *ddt;

  if (ddb->ddb_class > scn->scn_phys.scn_ddt_class_max)
   break;
  dprintf("visiting ddb=%llu/%llu/%llu/%llx\n",
      (longlong_t)ddb->ddb_class,
      (longlong_t)ddb->ddb_type,
      (longlong_t)ddb->ddb_checksum,
      (longlong_t)ddb->ddb_cursor);


  ddt = scn->scn_dp->dp_spa->spa_ddt[ddb->ddb_checksum];
  ASSERT(avl_first(&ddt->ddt_tree) == ((void*)0));

  dsl_scan_ddt_entry(scn, ddb->ddb_checksum, &dde, tx);
  n++;

  if (dsl_scan_check_suspend(scn, ((void*)0)))
   break;
 }

 zfs_dbgmsg("scanned %llu ddt entries with class_max = %u; "
     "suspending=%u", (longlong_t)n,
     (int)scn->scn_phys.scn_ddt_class_max, (int)scn->scn_suspending);

 ASSERT(error == 0 || error == ENOENT);
 ASSERT(error != ENOENT ||
     ddb->ddb_class > scn->scn_phys.scn_ddt_class_max);
}
