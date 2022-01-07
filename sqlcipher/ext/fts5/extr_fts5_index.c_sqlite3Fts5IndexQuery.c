
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_25__ {scalar_t__* p; int member_2; int member_1; int member_0; } ;
struct TYPE_24__ {scalar_t__ bPrefixIndex; int nPrefix; int* aPrefix; } ;
struct TYPE_23__ {scalar_t__ rc; TYPE_5__* pConfig; } ;
struct TYPE_22__ {scalar_t__ pColset; int (* xSetOutputs ) (TYPE_3__*,TYPE_2__*) ;TYPE_1__* aFirst; TYPE_2__* aSeg; } ;
struct TYPE_21__ {scalar_t__ pLeaf; } ;
struct TYPE_20__ {size_t iFirst; } ;
typedef int Fts5Structure ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Iter ;
typedef int Fts5IndexIter ;
typedef TYPE_4__ Fts5Index ;
typedef TYPE_5__ Fts5Config ;
typedef int Fts5Colset ;
typedef TYPE_6__ Fts5Buffer ;


 int FTS5INDEX_QUERY_DESC ;
 int FTS5INDEX_QUERY_PREFIX ;
 int FTS5INDEX_QUERY_SCAN ;
 int FTS5INDEX_QUERY_SKIPEMPTY ;
 int FTS5INDEX_QUERY_TEST_NOIDX ;
 scalar_t__ FTS5_MAIN_PREFIX ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5CloseReader (TYPE_4__*) ;
 int fts5IndexCharlen (char const*,int) ;
 int fts5IndexReturn (TYPE_4__*) ;
 int fts5IterSetOutputCb (scalar_t__*,TYPE_3__*) ;
 int fts5MultiIterNew (TYPE_4__*,int *,int,int *,scalar_t__*,int,int,int ,TYPE_3__**) ;
 int fts5SetupPrefixIter (TYPE_4__*,int,scalar_t__*,int,int *,TYPE_3__**) ;
 int * fts5StructureRead (TYPE_4__*) ;
 int fts5StructureRelease (int *) ;
 int memcpy (scalar_t__*,char const*,int) ;
 int sqlite3Fts5BufferFree (TYPE_6__*) ;
 scalar_t__ sqlite3Fts5BufferSize (scalar_t__*,TYPE_6__*,int) ;
 int sqlite3Fts5IterClose (int *) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;

int sqlite3Fts5IndexQuery(
  Fts5Index *p,
  const char *pToken, int nToken,
  int flags,
  Fts5Colset *pColset,
  Fts5IndexIter **ppIter
){
  Fts5Config *pConfig = p->pConfig;
  Fts5Iter *pRet = 0;
  Fts5Buffer buf = {0, 0, 0};


  assert( (flags & FTS5INDEX_QUERY_SCAN)==0 || flags==FTS5INDEX_QUERY_SCAN );

  if( sqlite3Fts5BufferSize(&p->rc, &buf, nToken+1)==0 ){
    int iIdx = 0;
    if( nToken ) memcpy(&buf.p[1], pToken, nToken);
    if( flags & FTS5INDEX_QUERY_PREFIX ){
      int nChar = fts5IndexCharlen(pToken, nToken);
      for(iIdx=1; iIdx<=pConfig->nPrefix; iIdx++){
        if( pConfig->aPrefix[iIdx-1]==nChar ) break;
      }
    }

    if( iIdx<=pConfig->nPrefix ){

      Fts5Structure *pStruct = fts5StructureRead(p);
      buf.p[0] = (u8)(FTS5_MAIN_PREFIX + iIdx);
      if( pStruct ){
        fts5MultiIterNew(p, pStruct, flags | FTS5INDEX_QUERY_SKIPEMPTY,
            pColset, buf.p, nToken+1, -1, 0, &pRet
        );
        fts5StructureRelease(pStruct);
      }
    }else{

      int bDesc = (flags & FTS5INDEX_QUERY_DESC)!=0;
      buf.p[0] = FTS5_MAIN_PREFIX;
      fts5SetupPrefixIter(p, bDesc, buf.p, nToken+1, pColset, &pRet);
      assert( p->rc!=SQLITE_OK || pRet->pColset==0 );
      fts5IterSetOutputCb(&p->rc, pRet);
      if( p->rc==SQLITE_OK ){
        Fts5SegIter *pSeg = &pRet->aSeg[pRet->aFirst[1].iFirst];
        if( pSeg->pLeaf ) pRet->xSetOutputs(pRet, pSeg);
      }
    }

    if( p->rc ){
      sqlite3Fts5IterClose((Fts5IndexIter*)pRet);
      pRet = 0;
      fts5CloseReader(p);
    }

    *ppIter = (Fts5IndexIter*)pRet;
    sqlite3Fts5BufferFree(&buf);
  }
  return fts5IndexReturn(p);
}
