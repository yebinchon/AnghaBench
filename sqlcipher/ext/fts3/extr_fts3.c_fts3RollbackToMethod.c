
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int mxSavepoint; int inTransaction; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int TESTONLY (int) ;
 int UNUSED_PARAMETER (int) ;
 int assert (int ) ;
 int sqlite3Fts3PendingTermsClear (TYPE_1__*) ;

__attribute__((used)) static int fts3RollbackToMethod(sqlite3_vtab *pVtab, int iSavepoint){
  Fts3Table *p = (Fts3Table*)pVtab;
  UNUSED_PARAMETER(iSavepoint);
  assert( p->inTransaction );
  TESTONLY( p->mxSavepoint = iSavepoint );
  sqlite3Fts3PendingTermsClear(p);
  return SQLITE_OK;
}
