
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int u64 ;
typedef int sqlite3_stmt ;
typedef scalar_t__ i64 ;
struct TYPE_29__ {int iLeaf; } ;
struct TYPE_28__ {int zName; int zDb; } ;
struct TYPE_27__ {scalar_t__ nn; scalar_t__ szLeaf; int * p; } ;
struct TYPE_26__ {int rc; TYPE_4__* pConfig; } ;
struct TYPE_25__ {int pgnoFirst; int pgnoLast; int iSegid; } ;
typedef TYPE_1__ Fts5StructureSegment ;
typedef TYPE_2__ Fts5Index ;
typedef int Fts5DlidxIter ;
typedef TYPE_3__ Fts5Data ;
typedef TYPE_4__ Fts5Config ;


 int ASSERT_SZLEAF_OK (TYPE_3__*) ;
 void* FTS5_CORRUPT ;
 scalar_t__ FTS5_SEGMENT_ROWID (int,int) ;
 int MIN (int,int) ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 TYPE_3__* fts5DataRead (TYPE_2__*,scalar_t__) ;
 int fts5DataRelease (TYPE_3__*) ;
 scalar_t__ fts5DlidxIterEof (TYPE_2__*,int *) ;
 int fts5DlidxIterFree (int *) ;
 int * fts5DlidxIterInit (TYPE_2__*,int ,int,int) ;
 int fts5DlidxIterNext (TYPE_2__*,int *) ;
 int fts5DlidxIterPgno (int *) ;
 scalar_t__ fts5DlidxIterRowid (int *) ;
 int fts5GetVarint (int *,int *) ;
 scalar_t__ fts5GetVarint32 (int *,int) ;
 int fts5IndexIntegrityCheckEmpty (TYPE_2__*,TYPE_1__*,int,int,int) ;
 int fts5IndexPrepareStmt (TYPE_2__*,int **,int ) ;
 int fts5IntegrityCheckPgidx (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ fts5LeafFirstRowidOff (TYPE_3__*) ;
 int fts5LeafFirstTermOff (TYPE_3__*) ;
 TYPE_3__* fts5LeafRead (TYPE_2__*,scalar_t__) ;
 int fts5Memcmp (int *,char const*,int ) ;
 int fts5TestDlidxReverse (TYPE_2__*,int,int) ;
 TYPE_5__ iter ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_mprintf (char*,int ,int ,int) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void fts5IndexIntegrityCheckSegment(
  Fts5Index *p,
  Fts5StructureSegment *pSeg
){
  Fts5Config *pConfig = p->pConfig;
  sqlite3_stmt *pStmt = 0;
  int rc2;
  int iIdxPrevLeaf = pSeg->pgnoFirst-1;
  int iDlidxPrevLeaf = pSeg->pgnoLast;

  if( pSeg->pgnoFirst==0 ) return;

  fts5IndexPrepareStmt(p, &pStmt, sqlite3_mprintf(
      "SELECT segid, term, (pgno>>1), (pgno&1) FROM %Q.'%q_idx' WHERE segid=%d",
      pConfig->zDb, pConfig->zName, pSeg->iSegid
  ));


  while( p->rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pStmt) ){
    i64 iRow;
    Fts5Data *pLeaf;

    int nIdxTerm = sqlite3_column_bytes(pStmt, 1);
    const char *zIdxTerm = (const char*)sqlite3_column_text(pStmt, 1);
    int iIdxLeaf = sqlite3_column_int(pStmt, 2);
    int bIdxDlidx = sqlite3_column_int(pStmt, 3);



    if( iIdxLeaf<pSeg->pgnoFirst ) continue;
    iRow = FTS5_SEGMENT_ROWID(pSeg->iSegid, iIdxLeaf);
    pLeaf = fts5LeafRead(p, iRow);
    if( pLeaf==0 ) break;





    if( pLeaf->nn<=pLeaf->szLeaf ){
      p->rc = FTS5_CORRUPT;
    }else{
      int iOff;
      int iRowidOff;
      int nTerm;
      int res;

      iOff = fts5LeafFirstTermOff(pLeaf);
      iRowidOff = fts5LeafFirstRowidOff(pLeaf);
      if( iRowidOff>=iOff || iOff>=pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
      }else{
        iOff += fts5GetVarint32(&pLeaf->p[iOff], nTerm);
        res = fts5Memcmp(&pLeaf->p[iOff], zIdxTerm, MIN(nTerm, nIdxTerm));
        if( res==0 ) res = nTerm - nIdxTerm;
        if( res<0 ) p->rc = FTS5_CORRUPT;
      }

      fts5IntegrityCheckPgidx(p, pLeaf);
    }
    fts5DataRelease(pLeaf);
    if( p->rc ) break;



    fts5IndexIntegrityCheckEmpty(
        p, pSeg, iIdxPrevLeaf+1, iDlidxPrevLeaf+1, iIdxLeaf-1
    );
    if( p->rc ) break;


    if( bIdxDlidx ){
      Fts5DlidxIter *pDlidx = 0;
      int iPrevLeaf = iIdxLeaf;
      int iSegid = pSeg->iSegid;
      int iPg = 0;
      i64 iKey;

      for(pDlidx=fts5DlidxIterInit(p, 0, iSegid, iIdxLeaf);
          fts5DlidxIterEof(p, pDlidx)==0;
          fts5DlidxIterNext(p, pDlidx)
      ){


        for(iPg=iPrevLeaf+1; iPg<fts5DlidxIterPgno(pDlidx); iPg++){
          iKey = FTS5_SEGMENT_ROWID(iSegid, iPg);
          pLeaf = fts5DataRead(p, iKey);
          if( pLeaf ){
            if( fts5LeafFirstRowidOff(pLeaf)!=0 ) p->rc = FTS5_CORRUPT;
            fts5DataRelease(pLeaf);
          }
        }
        iPrevLeaf = fts5DlidxIterPgno(pDlidx);



        iKey = FTS5_SEGMENT_ROWID(iSegid, iPrevLeaf);
        pLeaf = fts5DataRead(p, iKey);
        if( pLeaf ){
          i64 iRowid;
          int iRowidOff = fts5LeafFirstRowidOff(pLeaf);
          ASSERT_SZLEAF_OK(pLeaf);
          if( iRowidOff>=pLeaf->szLeaf ){
            p->rc = FTS5_CORRUPT;
          }else{
            fts5GetVarint(&pLeaf->p[iRowidOff], (u64*)&iRowid);
            if( iRowid!=fts5DlidxIterRowid(pDlidx) ) p->rc = FTS5_CORRUPT;
          }
          fts5DataRelease(pLeaf);
        }
      }

      iDlidxPrevLeaf = iPg;
      fts5DlidxIterFree(pDlidx);
      fts5TestDlidxReverse(p, iSegid, iIdxLeaf);
    }else{
      iDlidxPrevLeaf = pSeg->pgnoLast;

    }

    iIdxPrevLeaf = iIdxLeaf;
  }

  rc2 = sqlite3_finalize(pStmt);
  if( p->rc==SQLITE_OK ) p->rc = rc2;







}
