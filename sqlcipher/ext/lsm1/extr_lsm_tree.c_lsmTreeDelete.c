
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_33__ {int nHeight; } ;
struct TYPE_30__ {TYPE_4__ root; } ;
struct TYPE_32__ {TYPE_1__ treehdr; } ;
typedef TYPE_3__ lsm_db ;
typedef TYPE_4__ TreeRoot ;
struct TYPE_34__ {int nKey; } ;
typedef TYPE_5__ TreeKey ;
struct TYPE_36__ {int member_1; int member_0; } ;
struct TYPE_35__ {int iNode; size_t* aiCell; TYPE_7__ blob; TYPE_2__** apTreeNode; } ;
typedef TYPE_6__ TreeCursor ;
typedef TYPE_7__ TreeBlob ;
struct TYPE_31__ {int* aiKeyPtr; } ;


 int LSM_END_DELETE ;
 int LSM_OK ;
 int LSM_START_DELETE ;
 void* TKV_KEY (TYPE_5__*) ;
 int TKV_LOADKEY ;
 int assert (int) ;
 int assert_delete_ranges_match (TYPE_3__*) ;
 int dump_tree_contents (TYPE_3__*,char*) ;
 int lsmTreeCursorKey (TYPE_6__*,int ,void**,int*) ;
 int lsmTreeCursorNext (TYPE_6__*) ;
 int lsmTreeCursorPrev (TYPE_6__*) ;
 int lsmTreeCursorSeek (TYPE_6__*,void*,int,int*) ;
 scalar_t__ lsmTreeCursorValid (TYPE_6__*) ;
 int printf (char*,...) ;
 int tblobFree (TYPE_3__*,TYPE_7__*) ;
 int treeCountEntries (TYPE_3__*) ;
 int treeCursorInit (TYPE_3__*,int ,TYPE_6__*) ;
 int treeDeleteEntry (TYPE_3__*,TYPE_6__*,int ) ;
 int treeInsertEntry (TYPE_3__*,int ,void*,int,int ,int) ;
 scalar_t__ treeKeycmp (void*,int,void*,int) ;
 int treeOverwriteKey (TYPE_3__*,TYPE_6__*,int,int*) ;
 TYPE_5__* treeShmkey (TYPE_3__*,int,int ,TYPE_7__*,int*) ;

int lsmTreeDelete(
  lsm_db *db,
  void *pKey1, int nKey1,
  void *pKey2, int nKey2
){
  int rc = LSM_OK;
  int bDone = 0;
  TreeRoot *p = &db->treehdr.root;
  TreeBlob blob = {0, 0};


  assert( treeKeycmp(pKey1, nKey1, pKey2, nKey2)<0 );
  assert( assert_delete_ranges_match(db) );
  while( bDone==0 && rc==LSM_OK ){
    int res;
    TreeCursor csr;
    void *pDel; int nDel;

    int nEntry = treeCountEntries(db);



    treeCursorInit(db, 0, &csr);
    lsmTreeCursorSeek(&csr, pKey1, nKey1, &res);
    if( res<=0 && lsmTreeCursorValid(&csr) ) lsmTreeCursorNext(&csr);




    bDone = 1;
    if( lsmTreeCursorValid(&csr) ){
      lsmTreeCursorKey(&csr, 0, &pDel, &nDel);
      if( treeKeycmp(pDel, nDel, pKey2, nKey2)<0 ) bDone = 0;
    }

    if( bDone==0 ){
      if( (u32)csr.iNode==(p->nHeight-1) ){

        rc = treeDeleteEntry(db, &csr, 0);
      }else{







        u32 iKey;
        TreeKey *pKey;
        int iNode = csr.iNode;
        lsmTreeCursorNext(&csr);
        assert( (u32)csr.iNode==(p->nHeight-1) );

        iKey = csr.apTreeNode[csr.iNode]->aiKeyPtr[csr.aiCell[csr.iNode]];
        lsmTreeCursorPrev(&csr);

        treeOverwriteKey(db, &csr, iKey, &rc);
        pKey = treeShmkey(db, iKey, TKV_LOADKEY, &blob, &rc);
        if( pKey ){
          rc = lsmTreeCursorSeek(&csr, TKV_KEY(pKey), pKey->nKey, &res);
        }
        if( rc==LSM_OK ){
          assert( res==0 && csr.iNode==iNode );
          rc = lsmTreeCursorNext(&csr);
          if( rc==LSM_OK ){
            rc = treeDeleteEntry(db, &csr, 0);
          }
        }
      }
    }


    tblobFree(db, &csr.blob);



    assert( bDone || treeCountEntries(db)==(nEntry-1) );
  }






  if( rc==LSM_OK ){
    rc = treeInsertEntry(db, LSM_START_DELETE, pKey1, nKey1, 0, -1);
  }



  if( rc==LSM_OK ){
    rc = treeInsertEntry(db, LSM_END_DELETE, pKey2, nKey2, 0, -1);
  }





  tblobFree(db, &blob);
  assert( assert_delete_ranges_match(db) );
  return rc;
}
