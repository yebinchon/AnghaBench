
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbcra_rl; int dbcra_tag; int dbcra_snaps; int dbcra_numsnaps; int dbcra_snap; int dbcra_bmark; } ;
typedef TYPE_1__ dsl_bookmark_create_redacted_arg_t ;
typedef int dmu_tx_t ;


 int dsl_bookmark_create_sync_impl (int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
dsl_bookmark_create_redacted_sync(void *arg, dmu_tx_t *tx)
{
 dsl_bookmark_create_redacted_arg_t *dbcra = arg;
 dsl_bookmark_create_sync_impl(dbcra->dbcra_bmark, dbcra->dbcra_snap, tx,
     dbcra->dbcra_numsnaps, dbcra->dbcra_snaps, dbcra->dbcra_tag,
     dbcra->dbcra_rl);
}
