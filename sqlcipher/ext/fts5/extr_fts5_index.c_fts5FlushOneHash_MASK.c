#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_8__ ;
typedef  struct TYPE_43__   TYPE_7__ ;
typedef  struct TYPE_42__   TYPE_6__ ;
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  scalar_t__ i64 ;
struct TYPE_44__ {scalar_t__ nSpace; int n; scalar_t__* p; } ;
struct TYPE_43__ {int /*<<< orphan*/  rc; TYPE_2__* pConfig; int /*<<< orphan*/ * pHash; } ;
struct TYPE_39__ {TYPE_8__ pgidx; TYPE_8__ buf; } ;
struct TYPE_42__ {scalar_t__ bFirstRowidInPage; TYPE_3__ writer; } ;
struct TYPE_41__ {scalar_t__ nLevel; int /*<<< orphan*/  nSegment; TYPE_1__* aLevel; } ;
struct TYPE_40__ {int iSegid; int pgnoFirst; int pgnoLast; } ;
struct TYPE_38__ {int pgsz; int eDetail; } ;
struct TYPE_37__ {int /*<<< orphan*/  nSeg; TYPE_4__* aSeg; } ;
typedef  TYPE_4__ Fts5StructureSegment ;
typedef  TYPE_5__ Fts5Structure ;
typedef  TYPE_6__ Fts5SegWriter ;
typedef  TYPE_7__ Fts5Index ;
typedef  int /*<<< orphan*/  Fts5Hash ;
typedef  TYPE_8__ Fts5Buffer ;

/* Variables and functions */
 scalar_t__ FTS5_DATA_PADDING ; 
 int FTS5_DETAIL_NONE ; 
 int /*<<< orphan*/  SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_5__**,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_5__**) ; 
 int FUNC7 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_5__* FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,TYPE_6__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/  const**,int*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC27 (char const*) ; 

__attribute__((used)) static void FUNC28(Fts5Index *p){
  Fts5Hash *pHash = p->pHash;
  Fts5Structure *pStruct;
  int iSegid;
  int pgnoLast = 0;                 /* Last leaf page number in segment */

  /* Obtain a reference to the index structure and allocate a new segment-id
  ** for the new level-0 segment.  */
  pStruct = FUNC13(p);
  iSegid = FUNC1(p, pStruct);
  FUNC11(p);

  if( iSegid ){
    const int pgsz = p->pConfig->pgsz;
    int eDetail = p->pConfig->eDetail;
    Fts5StructureSegment *pSeg;   /* New segment within pStruct */
    Fts5Buffer *pBuf;             /* Buffer in which to assemble leaf page */
    Fts5Buffer *pPgidx;           /* Buffer in which to assemble pgidx */

    Fts5SegWriter writer;
    FUNC20(p, &writer, iSegid);

    pBuf = &writer.writer.buf;
    pPgidx = &writer.writer.pgidx;

    /* fts5WriteInit() should have initialized the buffers to (most likely)
    ** the maximum space required. */
    FUNC0( p->rc || pBuf->nSpace>=(pgsz + FTS5_DATA_PADDING) );
    FUNC0( p->rc || pPgidx->nSpace>=(pgsz + FTS5_DATA_PADDING) );

    /* Begin scanning through hash table entries. This loop runs once for each
    ** term/doclist currently stored within the hash table. */
    if( p->rc==SQLITE_OK ){
      p->rc = FUNC24(pHash, 0, 0);
    }
    while( p->rc==SQLITE_OK && 0==FUNC23(pHash) ){
      const char *zTerm;          /* Buffer containing term */
      const u8 *pDoclist;         /* Pointer to doclist for this term */
      int nDoclist;               /* Size of doclist in bytes */

      /* Write the term for this entry to disk. */
      FUNC22(pHash, &zTerm, &pDoclist, &nDoclist);
      FUNC16(p, &writer, (int)FUNC27(zTerm), (const u8*)zTerm);
      if( p->rc!=SQLITE_OK ) break;

      FUNC0( writer.bFirstRowidInPage==0 );
      if( pgsz>=(pBuf->n + pPgidx->n + nDoclist + 1) ){
        /* The entire doclist will fit on the current leaf. */
        FUNC2(pBuf, pDoclist, nDoclist);
      }else{
        i64 iRowid = 0;
        i64 iDelta = 0;
        int iOff = 0;

        /* The entire doclist will not fit on this leaf. The following 
        ** loop iterates through the poslists that make up the current 
        ** doclist.  */
        while( p->rc==SQLITE_OK && iOff<nDoclist ){
          iOff += FUNC4(&pDoclist[iOff], (u64*)&iDelta);
          iRowid += iDelta;
          
          if( writer.bFirstRowidInPage ){
            FUNC8(&pBuf->p[0], (u16)pBuf->n);   /* first rowid on page */
            pBuf->n += FUNC26(&pBuf->p[pBuf->n], iRowid);
            writer.bFirstRowidInPage = 0;
            FUNC17(p, &writer, iRowid);
            if( p->rc!=SQLITE_OK ) break;
          }else{
            pBuf->n += FUNC26(&pBuf->p[pBuf->n], iDelta);
          }
          FUNC0( pBuf->n<=pBuf->nSpace );

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
              FUNC19(p, &writer);
            }
          }else{
            int bDummy;
            int nPos;
            int nCopy = FUNC3(&pDoclist[iOff], &nPos, &bDummy);
            nCopy += nPos;
            if( (pBuf->n + pPgidx->n + nCopy) <= pgsz ){
              /* The entire poslist will fit on the current leaf. So copy
              ** it in one go. */
              FUNC2(pBuf, &pDoclist[iOff], nCopy);
            }else{
              /* The entire poslist will not fit on this leaf. So it needs
              ** to be broken into sections. The only qualification being
              ** that each varint must be stored contiguously.  */
              const u8 *pPoslist = &pDoclist[iOff];
              int iPos = 0;
              while( p->rc==SQLITE_OK ){
                int nSpace = pgsz - pBuf->n - pPgidx->n;
                int n = 0;
                if( (nCopy - iPos)<=nSpace ){
                  n = nCopy - iPos;
                }else{
                  n = FUNC7(&pPoslist[iPos], nSpace);
                }
                FUNC0( n>0 );
                FUNC2(pBuf, &pPoslist[iPos], n);
                iPos += n;
                if( (pBuf->n + pPgidx->n)>=pgsz ){
                  FUNC19(p, &writer);
                }
                if( iPos>=nCopy ) break;
              }
            }
            iOff += nCopy;
          }
        }
      }

      /* TODO2: Doclist terminator written here. */
      /* pBuf->p[pBuf->n++] = '\0'; */
      FUNC0( pBuf->n<=pBuf->nSpace );
      if( p->rc==SQLITE_OK ) FUNC25(pHash);
    }
    FUNC21(pHash);
    FUNC18(p, &writer, &pgnoLast);

    /* Update the Fts5Structure. It is written back to the database by the
    ** fts5StructureRelease() call below.  */
    if( pStruct->nLevel==0 ){
      FUNC9(&p->rc, &pStruct);
    }
    FUNC10(&p->rc, pStruct, 0, 1, 0);
    if( p->rc==SQLITE_OK ){
      pSeg = &pStruct->aLevel[0].aSeg[ pStruct->aLevel[0].nSeg++ ];
      pSeg->iSegid = iSegid;
      pSeg->pgnoFirst = 1;
      pSeg->pgnoLast = pgnoLast;
      pStruct->nSegment++;
    }
    FUNC12(p, 0, pStruct);
  }

  FUNC5(p, &pStruct, pgnoLast);
  FUNC6(p, &pStruct);
  FUNC15(p, pStruct);
  FUNC14(pStruct);
}