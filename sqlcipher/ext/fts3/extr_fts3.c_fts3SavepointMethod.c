
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {int inTransaction; int mxSavepoint; scalar_t__ bIgnoreSavepoint; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int TESTONLY (int) ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int fts3SyncMethod (int *) ;

__attribute__((used)) static int fts3SavepointMethod(sqlite3_vtab *pVtab, int iSavepoint){
  int rc = SQLITE_OK;
  UNUSED_PARAMETER(iSavepoint);
  assert( ((Fts3Table *)pVtab)->inTransaction );
  assert( ((Fts3Table *)pVtab)->mxSavepoint <= iSavepoint );
  TESTONLY( ((Fts3Table *)pVtab)->mxSavepoint = iSavepoint );
  if( ((Fts3Table *)pVtab)->bIgnoreSavepoint==0 ){
    rc = fts3SyncMethod(pVtab);
  }
  return rc;
}
