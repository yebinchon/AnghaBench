
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lsm_db ;
struct TYPE_6__ {int blob; int pDb; } ;
typedef TYPE_1__ TreeCursor ;


 int LSM_OK ;
 int lsmTreeCursorEnd (TYPE_1__*,int ) ;
 int lsmTreeCursorNext (TYPE_1__*) ;
 scalar_t__ lsmTreeCursorValid (TYPE_1__*) ;
 int tblobFree (int ,int *) ;
 int treeCursorInit (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int treeCountEntries(lsm_db *db){
  TreeCursor csr;
  int rc;
  int nEntry = 0;

  treeCursorInit(db, 0, &csr);
  for( rc = lsmTreeCursorEnd(&csr, 0);
       rc==LSM_OK && lsmTreeCursorValid(&csr);
       rc = lsmTreeCursorNext(&csr)
  ){
    nEntry++;
  }

  tblobFree(csr.pDb, &csr.blob);

  return nEntry;
}
