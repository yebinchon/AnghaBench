#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_16__ {int nn; int szLeaf; int /*<<< orphan*/ * p; } ;
struct TYPE_15__ {int pHash; int /*<<< orphan*/  rc; } ;
struct TYPE_14__ {int iEndofDoclist; int /*<<< orphan*/  flags; int /*<<< orphan*/  iRowid; int /*<<< orphan*/  iLeafOffset; TYPE_3__* pLeaf; int /*<<< orphan*/  term; } ;
typedef  TYPE_1__ Fts5SegIter ;
typedef  TYPE_2__ Fts5Index ;
typedef  TYPE_3__ Fts5Data ;

/* Variables and functions */
 int FTS5INDEX_QUERY_DESC ; 
 int FTS5INDEX_QUERY_SCAN ; 
 int /*<<< orphan*/  FTS5_SEGITER_ONETERM ; 
 int /*<<< orphan*/  FTS5_SEGITER_REVERSE ; 
 int /*<<< orphan*/  SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char const*,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,char const**,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(
  Fts5Index *p,                   /* FTS5 backend */
  const u8 *pTerm, int nTerm,     /* Term to seek to */
  int flags,                      /* Mask of FTS5INDEX_XXX flags */
  Fts5SegIter *pIter              /* Object to populate */
){
  int nList = 0;
  const u8 *z = 0;
  int n = 0;
  Fts5Data *pLeaf = 0;

  FUNC0( p->pHash );
  FUNC0( p->rc==SQLITE_OK );

  if( pTerm==0 || (flags & FTS5INDEX_QUERY_SCAN) ){
    const u8 *pList = 0;

    p->rc = FUNC9(p->pHash, (const char*)pTerm, nTerm);
    FUNC8(p->pHash, (const char**)&z, &pList, &nList);
    n = (z ? (int)FUNC10((const char*)z) : 0);
    if( pList ){
      pLeaf = FUNC2(p, sizeof(Fts5Data));
      if( pLeaf ){
        pLeaf->p = (u8*)pList;
      }
    }
  }else{
    p->rc = FUNC7(p->pHash, sizeof(Fts5Data), 
        (const char*)pTerm, nTerm, (void**)&pLeaf, &nList
    );
    if( pLeaf ){
      pLeaf->p = (u8*)&pLeaf[1];
    }
    z = pTerm;
    n = nTerm;
    pIter->flags |= FTS5_SEGITER_ONETERM;
  }

  if( pLeaf ){
    FUNC6(&p->rc, &pIter->term, n, z);
    pLeaf->nn = pLeaf->szLeaf = nList;
    pIter->pLeaf = pLeaf;
    pIter->iLeafOffset = FUNC1(pLeaf->p, (u64*)&pIter->iRowid);
    pIter->iEndofDoclist = pLeaf->nn;

    if( flags & FTS5INDEX_QUERY_DESC ){
      pIter->flags |= FTS5_SEGITER_REVERSE;
      FUNC4(p, pIter);
    }else{
      FUNC3(p, pIter);
    }
  }

  FUNC5(p, pIter);
}