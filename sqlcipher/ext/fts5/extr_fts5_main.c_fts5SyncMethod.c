
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_8__ {int zErrMsg; } ;
struct TYPE_9__ {TYPE_1__* pConfig; TYPE_2__ base; } ;
struct TYPE_10__ {TYPE_3__ p; int pStorage; } ;
struct TYPE_7__ {int * pzErrmsg; } ;
typedef TYPE_4__ Fts5FullTable ;


 int FTS5_SYNC ;
 int fts5CheckTransactionState (TYPE_4__*,int ,int ) ;
 int fts5TripCursors (TYPE_4__*) ;
 int sqlite3Fts5StorageSync (int ) ;

__attribute__((used)) static int fts5SyncMethod(sqlite3_vtab *pVtab){
  int rc;
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  fts5CheckTransactionState(pTab, FTS5_SYNC, 0);
  pTab->p.pConfig->pzErrmsg = &pTab->p.base.zErrMsg;
  fts5TripCursors(pTab);
  rc = sqlite3Fts5StorageSync(pTab->pStorage);
  pTab->p.pConfig->pzErrmsg = 0;
  return rc;
}
