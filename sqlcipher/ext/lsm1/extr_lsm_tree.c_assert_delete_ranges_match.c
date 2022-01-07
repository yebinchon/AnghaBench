
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lsm_db ;
struct TYPE_12__ {int flags; } ;
typedef TYPE_1__ TreeKey ;
struct TYPE_14__ {int member_1; int member_0; } ;
struct TYPE_13__ {int pDb; TYPE_3__ blob; } ;
typedef TYPE_2__ TreeCursor ;
typedef TYPE_3__ TreeBlob ;


 int LSM_END_DELETE ;
 int LSM_OK ;
 int LSM_START_DELETE ;
 int assert (int) ;
 TYPE_1__* csrGetKey (TYPE_2__*,TYPE_3__*,int*) ;
 int lsmTreeCursorEnd (TYPE_2__*,int ) ;
 int lsmTreeCursorNext (TYPE_2__*) ;
 scalar_t__ lsmTreeCursorValid (TYPE_2__*) ;
 int tblobFree (int ,TYPE_3__*) ;
 int treeCursorInit (int *,int ,TYPE_2__*) ;

__attribute__((used)) static int assert_delete_ranges_match(lsm_db *db){
  int prev = 0;
  TreeBlob blob = {0, 0};
  TreeCursor csr;
  int rc;

  treeCursorInit(db, 0, &csr);
  for( rc = lsmTreeCursorEnd(&csr, 0);
       rc==LSM_OK && lsmTreeCursorValid(&csr);
       rc = lsmTreeCursorNext(&csr)
  ){
    TreeKey *pKey = csrGetKey(&csr, &blob, &rc);
    if( rc!=LSM_OK ) break;
    assert( ((prev&LSM_START_DELETE)==0)==((pKey->flags&LSM_END_DELETE)==0) );
    prev = pKey->flags;
  }

  tblobFree(csr.pDb, &csr.blob);
  tblobFree(csr.pDb, &blob);

  return 1;
}
