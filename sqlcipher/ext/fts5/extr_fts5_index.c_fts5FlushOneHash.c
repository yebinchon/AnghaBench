
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
typedef scalar_t__ i64 ;
struct TYPE_44__ {scalar_t__ nSpace; int n; scalar_t__* p; } ;
struct TYPE_43__ {int rc; TYPE_2__* pConfig; int * pHash; } ;
struct TYPE_39__ {TYPE_8__ pgidx; TYPE_8__ buf; } ;
struct TYPE_42__ {scalar_t__ bFirstRowidInPage; TYPE_3__ writer; } ;
struct TYPE_41__ {scalar_t__ nLevel; int nSegment; TYPE_1__* aLevel; } ;
struct TYPE_40__ {int iSegid; int pgnoFirst; int pgnoLast; } ;
struct TYPE_38__ {int pgsz; int eDetail; } ;
struct TYPE_37__ {int nSeg; TYPE_4__* aSeg; } ;
typedef TYPE_4__ Fts5StructureSegment ;
typedef TYPE_5__ Fts5Structure ;
typedef TYPE_6__ Fts5SegWriter ;
typedef TYPE_7__ Fts5Index ;
typedef int Fts5Hash ;
typedef TYPE_8__ Fts5Buffer ;


 scalar_t__ FTS5_DATA_PADDING ;
 int FTS5_DETAIL_NONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5AllocateSegid (TYPE_7__*,TYPE_5__*) ;
 int fts5BufferSafeAppendBlob (TYPE_8__*,int const*,int) ;
 int fts5GetPoslistSize (int const*,int*,int*) ;
 scalar_t__ fts5GetVarint (int const*,int *) ;
 int fts5IndexAutomerge (TYPE_7__*,TYPE_5__**,int) ;
 int fts5IndexCrisismerge (TYPE_7__*,TYPE_5__**) ;
 int fts5PoslistPrefix (int const*,int) ;
 int fts5PutU16 (scalar_t__*,int ) ;
 int fts5StructureAddLevel (int *,TYPE_5__**) ;
 int fts5StructureExtendLevel (int *,TYPE_5__*,int ,int,int ) ;
 int fts5StructureInvalidate (TYPE_7__*) ;
 int fts5StructurePromote (TYPE_7__*,int ,TYPE_5__*) ;
 TYPE_5__* fts5StructureRead (TYPE_7__*) ;
 int fts5StructureRelease (TYPE_5__*) ;
 int fts5StructureWrite (TYPE_7__*,TYPE_5__*) ;
 int fts5WriteAppendTerm (TYPE_7__*,TYPE_6__*,int,int const*) ;
 int fts5WriteDlidxAppend (TYPE_7__*,TYPE_6__*,scalar_t__) ;
 int fts5WriteFinish (TYPE_7__*,TYPE_6__*,int*) ;
 int fts5WriteFlushLeaf (TYPE_7__*,TYPE_6__*) ;
 int fts5WriteInit (TYPE_7__*,TYPE_6__*,int) ;
 int sqlite3Fts5HashClear (int *) ;
 int sqlite3Fts5HashScanEntry (int *,char const**,int const**,int*) ;
 scalar_t__ sqlite3Fts5HashScanEof (int *) ;
 int sqlite3Fts5HashScanInit (int *,int ,int ) ;
 int sqlite3Fts5HashScanNext (int *) ;
 scalar_t__ sqlite3Fts5PutVarint (scalar_t__*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void fts5FlushOneHash(Fts5Index *p){
  Fts5Hash *pHash = p->pHash;
  Fts5Structure *pStruct;
  int iSegid;
  int pgnoLast = 0;



  pStruct = fts5StructureRead(p);
  iSegid = fts5AllocateSegid(p, pStruct);
  fts5StructureInvalidate(p);

  if( iSegid ){
    const int pgsz = p->pConfig->pgsz;
    int eDetail = p->pConfig->eDetail;
    Fts5StructureSegment *pSeg;
    Fts5Buffer *pBuf;
    Fts5Buffer *pPgidx;

    Fts5SegWriter writer;
    fts5WriteInit(p, &writer, iSegid);

    pBuf = &writer.writer.buf;
    pPgidx = &writer.writer.pgidx;



    assert( p->rc || pBuf->nSpace>=(pgsz + FTS5_DATA_PADDING) );
    assert( p->rc || pPgidx->nSpace>=(pgsz + FTS5_DATA_PADDING) );



    if( p->rc==SQLITE_OK ){
      p->rc = sqlite3Fts5HashScanInit(pHash, 0, 0);
    }
    while( p->rc==SQLITE_OK && 0==sqlite3Fts5HashScanEof(pHash) ){
      const char *zTerm;
      const u8 *pDoclist;
      int nDoclist;


      sqlite3Fts5HashScanEntry(pHash, &zTerm, &pDoclist, &nDoclist);
      fts5WriteAppendTerm(p, &writer, (int)strlen(zTerm), (const u8*)zTerm);
      if( p->rc!=SQLITE_OK ) break;

      assert( writer.bFirstRowidInPage==0 );
      if( pgsz>=(pBuf->n + pPgidx->n + nDoclist + 1) ){

        fts5BufferSafeAppendBlob(pBuf, pDoclist, nDoclist);
      }else{
        i64 iRowid = 0;
        i64 iDelta = 0;
        int iOff = 0;




        while( p->rc==SQLITE_OK && iOff<nDoclist ){
          iOff += fts5GetVarint(&pDoclist[iOff], (u64*)&iDelta);
          iRowid += iDelta;

          if( writer.bFirstRowidInPage ){
            fts5PutU16(&pBuf->p[0], (u16)pBuf->n);
            pBuf->n += sqlite3Fts5PutVarint(&pBuf->p[pBuf->n], iRowid);
            writer.bFirstRowidInPage = 0;
            fts5WriteDlidxAppend(p, &writer, iRowid);
            if( p->rc!=SQLITE_OK ) break;
          }else{
            pBuf->n += sqlite3Fts5PutVarint(&pBuf->p[pBuf->n], iDelta);
          }
          assert( pBuf->n<=pBuf->nSpace );

          if( eDetail==FTS5_DETAIL_NONE ){
            if( iOff<nDoclist && pDoclist[iOff]==0 ){
              pBuf->p[pBuf->n++] = 0;
              iOff++;
              if( iOff<nDoclist && pDoclist[iOff]==0 ){
                pBuf->p[pBuf->n++] = 0;
                iOff++;
              }
            }
            if( (pBuf->n + pPgidx->n)>=pgsz ){
              fts5WriteFlushLeaf(p, &writer);
            }
          }else{
            int bDummy;
            int nPos;
            int nCopy = fts5GetPoslistSize(&pDoclist[iOff], &nPos, &bDummy);
            nCopy += nPos;
            if( (pBuf->n + pPgidx->n + nCopy) <= pgsz ){


              fts5BufferSafeAppendBlob(pBuf, &pDoclist[iOff], nCopy);
            }else{



              const u8 *pPoslist = &pDoclist[iOff];
              int iPos = 0;
              while( p->rc==SQLITE_OK ){
                int nSpace = pgsz - pBuf->n - pPgidx->n;
                int n = 0;
                if( (nCopy - iPos)<=nSpace ){
                  n = nCopy - iPos;
                }else{
                  n = fts5PoslistPrefix(&pPoslist[iPos], nSpace);
                }
                assert( n>0 );
                fts5BufferSafeAppendBlob(pBuf, &pPoslist[iPos], n);
                iPos += n;
                if( (pBuf->n + pPgidx->n)>=pgsz ){
                  fts5WriteFlushLeaf(p, &writer);
                }
                if( iPos>=nCopy ) break;
              }
            }
            iOff += nCopy;
          }
        }
      }



      assert( pBuf->n<=pBuf->nSpace );
      if( p->rc==SQLITE_OK ) sqlite3Fts5HashScanNext(pHash);
    }
    sqlite3Fts5HashClear(pHash);
    fts5WriteFinish(p, &writer, &pgnoLast);



    if( pStruct->nLevel==0 ){
      fts5StructureAddLevel(&p->rc, &pStruct);
    }
    fts5StructureExtendLevel(&p->rc, pStruct, 0, 1, 0);
    if( p->rc==SQLITE_OK ){
      pSeg = &pStruct->aLevel[0].aSeg[ pStruct->aLevel[0].nSeg++ ];
      pSeg->iSegid = iSegid;
      pSeg->pgnoFirst = 1;
      pSeg->pgnoLast = pgnoLast;
      pStruct->nSegment++;
    }
    fts5StructurePromote(p, 0, pStruct);
  }

  fts5IndexAutomerge(p, &pStruct, pgnoLast);
  fts5IndexCrisismerge(p, &pStruct);
  fts5StructureWrite(p, pStruct);
  fts5StructureRelease(pStruct);
}
