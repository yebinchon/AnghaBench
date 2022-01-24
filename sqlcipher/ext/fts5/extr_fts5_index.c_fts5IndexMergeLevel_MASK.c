#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_55__   TYPE_9__ ;
typedef  struct TYPE_54__   TYPE_8__ ;
typedef  struct TYPE_53__   TYPE_7__ ;
typedef  struct TYPE_52__   TYPE_6__ ;
typedef  struct TYPE_51__   TYPE_5__ ;
typedef  struct TYPE_50__   TYPE_4__ ;
typedef  struct TYPE_49__   TYPE_3__ ;
typedef  struct TYPE_48__   TYPE_2__ ;
typedef  struct TYPE_47__   TYPE_1__ ;
typedef  struct TYPE_46__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_55__ {TYPE_3__* aFirst; TYPE_8__* aSeg; } ;
struct TYPE_54__ {int nPos; int bDel; } ;
struct TYPE_48__ {scalar_t__ pgno; int /*<<< orphan*/  buf; } ;
struct TYPE_53__ {int n; int nLeafWritten; TYPE_2__ writer; int /*<<< orphan*/  p; scalar_t__ iBtPage; } ;
struct TYPE_52__ {int nLevel; scalar_t__ nSegment; TYPE_5__* aLevel; } ;
struct TYPE_51__ {int nMerge; int nSeg; TYPE_4__* aSeg; } ;
struct TYPE_50__ {int iSegid; scalar_t__ pgnoLast; int pgnoFirst; } ;
struct TYPE_49__ {size_t iFirst; } ;
struct TYPE_47__ {int eDetail; } ;
struct TYPE_46__ {scalar_t__ rc; TYPE_1__* pConfig; } ;
typedef  TYPE_4__ Fts5StructureSegment ;
typedef  TYPE_5__ Fts5StructureLevel ;
typedef  TYPE_6__ Fts5Structure ;
typedef  TYPE_7__ Fts5SegWriter ;
typedef  TYPE_8__ Fts5SegIter ;
typedef  TYPE_9__ Fts5Iter ;
typedef  TYPE_10__ Fts5Index ;
typedef  TYPE_7__ Fts5Buffer ;

/* Variables and functions */
 int FTS5INDEX_QUERY_NOOUTPUT ; 
 int FTS5_DETAIL_NONE ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_10__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_7__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,TYPE_8__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fts5MergeChunkCallback ; 
 scalar_t__ FUNC8 (TYPE_10__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,TYPE_6__*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_9__*,int*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_10__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_10__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_10__*,TYPE_7__*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_10__*,TYPE_7__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC23(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5Structure **ppStruct,       /* IN/OUT: Stucture of index */
  int iLvl,                       /* Level to read input from */
  int *pnRem                      /* Write up to this many output leaves */
){
  Fts5Structure *pStruct = *ppStruct;
  Fts5StructureLevel *pLvl = &pStruct->aLevel[iLvl];
  Fts5StructureLevel *pLvlOut;
  Fts5Iter *pIter = 0;       /* Iterator to read input data */
  int nRem = pnRem ? *pnRem : 0;  /* Output leaf pages left to write */
  int nInput;                     /* Number of input segments */
  Fts5SegWriter writer;           /* Writer object */
  Fts5StructureSegment *pSeg;     /* Output segment */
  Fts5Buffer term;
  int bOldest;                    /* True if the output segment is the oldest */
  int eDetail = p->pConfig->eDetail;
  const int flags = FTS5INDEX_QUERY_NOOUTPUT;
  int bTermWritten = 0;           /* True if current term already output */

  FUNC0( iLvl<pStruct->nLevel );
  FUNC0( pLvl->nMerge<=pLvl->nSeg );

  FUNC22(&writer, 0, sizeof(Fts5SegWriter));
  FUNC22(&term, 0, sizeof(Fts5Buffer));
  if( pLvl->nMerge ){
    pLvlOut = &pStruct->aLevel[iLvl+1];
    FUNC0( pLvlOut->nSeg>0 );
    nInput = pLvl->nMerge;
    pSeg = &pLvlOut->aSeg[pLvlOut->nSeg-1];

    FUNC20(p, &writer, pSeg->iSegid);
    writer.writer.pgno = pSeg->pgnoLast+1;
    writer.iBtPage = 0;
  }else{
    int iSegid = FUNC1(p, pStruct);

    /* Extend the Fts5Structure object as required to ensure the output
    ** segment exists. */
    if( iLvl==pStruct->nLevel-1 ){
      FUNC14(&p->rc, ppStruct);
      pStruct = *ppStruct;
    }
    FUNC15(&p->rc, pStruct, iLvl+1, 1, 0);
    if( p->rc ) return;
    pLvl = &pStruct->aLevel[iLvl];
    pLvlOut = &pStruct->aLevel[iLvl+1];

    FUNC20(p, &writer, iSegid);

    /* Add the new segment to the output level */
    pSeg = &pLvlOut->aSeg[pLvlOut->nSeg];
    pLvlOut->nSeg++;
    pSeg->pgnoFirst = 1;
    pSeg->iSegid = iSegid;
    pStruct->nSegment++;

    /* Read input from all segments in the input level */
    nInput = pLvl->nSeg;
  }
  bOldest = (pLvlOut->nSeg==1 && pStruct->nLevel==iLvl+2);

  FUNC0( iLvl>=0 );
  for(FUNC10(p, pStruct, flags, 0, 0, 0, iLvl, nInput, &pIter);
      FUNC8(p, pIter)==0;
      FUNC11(p, pIter, 0, 0)
  ){
    Fts5SegIter *pSegIter = &pIter->aSeg[ pIter->aFirst[1].iFirst ];
    int nPos;                     /* position-list size field value */
    int nTerm;
    const u8 *pTerm;

    pTerm = FUNC13(pIter, &nTerm);
    if( nTerm!=term.n || FUNC7(pTerm, term.p, nTerm) ){
      if( pnRem && writer.nLeafWritten>nRem ){
        break;
      }
      FUNC4(&p->rc, &term, nTerm, pTerm);
      bTermWritten =0;
    }

    /* Check for key annihilation. */
    if( pSegIter->nPos==0 && (bOldest || pSegIter->bDel==0) ) continue;

    if( p->rc==SQLITE_OK && bTermWritten==0 ){
      /* This is a new term. Append a term to the output segment. */
      FUNC18(p, &writer, nTerm, pTerm);
      bTermWritten = 1;
    }

    /* Append the rowid to the output */
    /* WRITEPOSLISTSIZE */
    FUNC17(p, &writer, FUNC12(pIter));

    if( eDetail==FTS5_DETAIL_NONE ){
      if( pSegIter->bDel ){
        FUNC2(&p->rc, &writer.writer.buf, 0);
        if( pSegIter->nPos>0 ){
          FUNC2(&p->rc, &writer.writer.buf, 0);
        }
      }
    }else{
      /* Append the position-list data to the output */
      nPos = pSegIter->nPos*2 + pSegIter->bDel;
      FUNC2(&p->rc, &writer.writer.buf, nPos);
      FUNC5(p, pSegIter, (void*)&writer, fts5MergeChunkCallback);
    }
  }

  /* Flush the last leaf page to disk. Set the output segment b-tree height
  ** and last leaf page number at the same time.  */
  FUNC19(p, &writer, &pSeg->pgnoLast);

  if( FUNC8(p, pIter) ){
    int i;

    /* Remove the redundant segments from the %_data table */
    for(i=0; i<nInput; i++){
      FUNC6(p, pLvl->aSeg[i].iSegid);
    }

    /* Remove the redundant segments from the input level */
    if( pLvl->nSeg!=nInput ){
      int nMove = (pLvl->nSeg - nInput) * sizeof(Fts5StructureSegment);
      FUNC21(pLvl->aSeg, &pLvl->aSeg[nInput], nMove);
    }
    pStruct->nSegment -= nInput;
    pLvl->nSeg -= nInput;
    pLvl->nMerge = 0;
    if( pSeg->pgnoLast==0 ){
      pLvlOut->nSeg--;
      pStruct->nSegment--;
    }
  }else{
    FUNC0( pSeg->pgnoLast>0 );
    FUNC16(p, pIter);
    pLvl->nMerge = nInput;
  }

  FUNC9(pIter);
  FUNC3(&term);
  if( pnRem ) *pnRem -= writer.nLeafWritten;
}