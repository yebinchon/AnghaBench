#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_33__ {int nHeight; } ;
struct TYPE_30__ {TYPE_4__ root; } ;
struct TYPE_32__ {TYPE_1__ treehdr; } ;
typedef  TYPE_3__ lsm_db ;
typedef  TYPE_4__ TreeRoot ;
struct TYPE_34__ {int nKey; } ;
typedef  TYPE_5__ TreeKey ;
struct TYPE_36__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_35__ {int iNode; size_t* aiCell; TYPE_7__ blob; TYPE_2__** apTreeNode; } ;
typedef  TYPE_6__ TreeCursor ;
typedef  TYPE_7__ TreeBlob ;
struct TYPE_31__ {int* aiKeyPtr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_END_DELETE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  LSM_START_DELETE ; 
 void* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  TKV_LOADKEY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,void**,int*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int FUNC7 (TYPE_6__*,void*,int,int*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_7__*) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC13 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_6__*,int,int*) ; 
 TYPE_5__* FUNC17 (TYPE_3__*,int,int /*<<< orphan*/ ,TYPE_7__*,int*) ; 

int FUNC18(
  lsm_db *db,
  void *pKey1, int nKey1,         /* Start of range */
  void *pKey2, int nKey2          /* End of range */
){
  int rc = LSM_OK;
  int bDone = 0;
  TreeRoot *p = &db->treehdr.root;
  TreeBlob blob = {0, 0};

  /* The range must be sensible - that (key1 < key2). */
  FUNC1( FUNC15(pKey1, nKey1, pKey2, nKey2)<0 );
  FUNC1( FUNC2(db) );

#if 0
  static int nCall = 0;
  printf("\n");
  nCall++;
  printf("%d delete %s .. %s\n", nCall, (char *)pKey1, (char *)pKey2);
  dump_tree_contents(db, "before delete");
#endif

  /* Step 1. This loop runs until the tree contains no keys within the
  ** range being deleted. Or until an error occurs. */
  while( bDone==0 && rc==LSM_OK ){
    int res;
    TreeCursor csr;               /* Cursor to seek to first key in range */
    void *pDel; int nDel;         /* Key to (possibly) delete this iteration */
#ifndef NDEBUG
    int nEntry = FUNC11(db);
#endif

    /* Seek the cursor to the first entry in the tree greater than pKey1. */
    FUNC12(db, 0, &csr);
    FUNC7(&csr, pKey1, nKey1, &res);
    if( res<=0 && FUNC8(&csr) ) FUNC5(&csr);

    /* If there is no such entry, or if it is greater than pKey2, then the
    ** tree now contains no keys in the range being deleted. In this case
    ** break out of the loop.  */
    bDone = 1;
    if( FUNC8(&csr) ){
      FUNC4(&csr, 0, &pDel, &nDel);
      if( FUNC15(pDel, nDel, pKey2, nKey2)<0 ) bDone = 0;
    }

    if( bDone==0 ){
      if( (u32)csr.iNode==(p->nHeight-1) ){
        /* The element to delete already lies on a leaf node */
        rc = FUNC13(db, &csr, 0);
      }else{
        /* 1. Overwrite the current key with a copy of the next key in the 
        **    tree (key N).
        **
        ** 2. Seek to key N (cursor will stop at the internal node copy of
        **    N). Move to the next key (original copy of N). Delete
        **    this entry. 
        */
        u32 iKey;
        TreeKey *pKey;
        int iNode = csr.iNode;
        FUNC5(&csr);
        FUNC1( (u32)csr.iNode==(p->nHeight-1) );

        iKey = csr.apTreeNode[csr.iNode]->aiKeyPtr[csr.aiCell[csr.iNode]];
        FUNC6(&csr);

        FUNC16(db, &csr, iKey, &rc);
        pKey = FUNC17(db, iKey, TKV_LOADKEY, &blob, &rc);
        if( pKey ){
          rc = FUNC7(&csr, FUNC0(pKey), pKey->nKey, &res);
        }
        if( rc==LSM_OK ){
          FUNC1( res==0 && csr.iNode==iNode );
          rc = FUNC5(&csr);
          if( rc==LSM_OK ){
            rc = FUNC13(db, &csr, 0);
          }
        }
      }
    }

    /* Clean up any memory allocated by the cursor. */
    FUNC10(db, &csr.blob);
#if 0
    dump_tree_contents(db, "ddd delete");
#endif
    FUNC1( bDone || FUNC11(db)==(nEntry-1) );
  }

#if 0
  dump_tree_contents(db, "during delete");
#endif

  /* Now insert the START_DELETE and END_DELETE keys. */
  if( rc==LSM_OK ){
    rc = FUNC14(db, LSM_START_DELETE, pKey1, nKey1, 0, -1);
  }
#if 0
  dump_tree_contents(db, "during delete 2");
#endif
  if( rc==LSM_OK ){
    rc = FUNC14(db, LSM_END_DELETE, pKey2, nKey2, 0, -1);
  }

#if 0
  dump_tree_contents(db, "after delete");
#endif

  FUNC10(db, &blob);
  FUNC1( FUNC2(db) );
  return rc;
}