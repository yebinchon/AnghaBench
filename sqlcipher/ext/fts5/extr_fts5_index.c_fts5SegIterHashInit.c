
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_16__ {int nn; int szLeaf; int * p; } ;
struct TYPE_15__ {int pHash; int rc; } ;
struct TYPE_14__ {int iEndofDoclist; int flags; int iRowid; int iLeafOffset; TYPE_3__* pLeaf; int term; } ;
typedef TYPE_1__ Fts5SegIter ;
typedef TYPE_2__ Fts5Index ;
typedef TYPE_3__ Fts5Data ;


 int FTS5INDEX_QUERY_DESC ;
 int FTS5INDEX_QUERY_SCAN ;
 int FTS5_SEGITER_ONETERM ;
 int FTS5_SEGITER_REVERSE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5GetVarint (int *,int *) ;
 TYPE_3__* fts5IdxMalloc (TYPE_2__*,int) ;
 int fts5SegIterLoadNPos (TYPE_2__*,TYPE_1__*) ;
 int fts5SegIterReverseInitPage (TYPE_2__*,TYPE_1__*) ;
 int fts5SegIterSetNext (TYPE_2__*,TYPE_1__*) ;
 int sqlite3Fts5BufferSet (int *,int *,int,int const*) ;
 int sqlite3Fts5HashQuery (int,int,char const*,int,void**,int*) ;
 int sqlite3Fts5HashScanEntry (int,char const**,int const**,int*) ;
 int sqlite3Fts5HashScanInit (int,char const*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void fts5SegIterHashInit(
  Fts5Index *p,
  const u8 *pTerm, int nTerm,
  int flags,
  Fts5SegIter *pIter
){
  int nList = 0;
  const u8 *z = 0;
  int n = 0;
  Fts5Data *pLeaf = 0;

  assert( p->pHash );
  assert( p->rc==SQLITE_OK );

  if( pTerm==0 || (flags & FTS5INDEX_QUERY_SCAN) ){
    const u8 *pList = 0;

    p->rc = sqlite3Fts5HashScanInit(p->pHash, (const char*)pTerm, nTerm);
    sqlite3Fts5HashScanEntry(p->pHash, (const char**)&z, &pList, &nList);
    n = (z ? (int)strlen((const char*)z) : 0);
    if( pList ){
      pLeaf = fts5IdxMalloc(p, sizeof(Fts5Data));
      if( pLeaf ){
        pLeaf->p = (u8*)pList;
      }
    }
  }else{
    p->rc = sqlite3Fts5HashQuery(p->pHash, sizeof(Fts5Data),
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
    sqlite3Fts5BufferSet(&p->rc, &pIter->term, n, z);
    pLeaf->nn = pLeaf->szLeaf = nList;
    pIter->pLeaf = pLeaf;
    pIter->iLeafOffset = fts5GetVarint(pLeaf->p, (u64*)&pIter->iRowid);
    pIter->iEndofDoclist = pLeaf->nn;

    if( flags & FTS5INDEX_QUERY_DESC ){
      pIter->flags |= FTS5_SEGITER_REVERSE;
      fts5SegIterReverseInitPage(p, pIter);
    }else{
      fts5SegIterLoadNPos(p, pIter);
    }
  }

  fts5SegIterSetNext(p, pIter);
}
