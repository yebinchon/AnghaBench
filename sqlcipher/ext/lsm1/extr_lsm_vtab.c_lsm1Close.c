
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {int pLsmCur; struct TYPE_3__* pKey2; } ;
typedef TYPE_1__ lsm1_cursor ;


 int SQLITE_OK ;
 int lsm_csr_close (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int lsm1Close(sqlite3_vtab_cursor *cur){
  lsm1_cursor *pCur = (lsm1_cursor*)cur;
  sqlite3_free(pCur->pKey2);
  lsm_csr_close(pCur->pLsmCur);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
