
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int pDb; } ;
typedef TYPE_1__ lsm1_vtab ;


 int SQLITE_OK ;
 int lsm_close (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int lsm1Disconnect(sqlite3_vtab *pVtab){
  lsm1_vtab *p = (lsm1_vtab*)pVtab;
  lsm_close(p->pDb);
  sqlite3_free(p);
  return SQLITE_OK;
}
