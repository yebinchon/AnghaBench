
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {int pDb; } ;
typedef TYPE_1__ lsm1_vtab ;


 int LSM_OK ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int lsm_commit (int ,int ) ;

__attribute__((used)) static int lsm1Commit(sqlite3_vtab *pVtab){
  lsm1_vtab *p = (lsm1_vtab*)pVtab;
  int rc = lsm_commit(p->pDb, 0);
  return rc==LSM_OK ? SQLITE_OK : SQLITE_ERROR;
}
