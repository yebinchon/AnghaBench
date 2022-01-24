#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_14__ {scalar_t__ pVtab; } ;
typedef  TYPE_3__ sqlite3_vtab_cursor ;
typedef  int i64 ;
struct TYPE_18__ {int n; char const* p; } ;
struct TYPE_17__ {int nData; int /*<<< orphan*/ * pData; } ;
struct TYPE_16__ {int iCol; scalar_t__* aDoc; int bEof; int nLeTerm; char const* zLeTerm; scalar_t__* aCnt; TYPE_2__* pFts5; TYPE_6__* pIter; TYPE_9__ term; int /*<<< orphan*/  rowid; } ;
struct TYPE_15__ {int eType; } ;
struct TYPE_13__ {TYPE_1__* pConfig; } ;
struct TYPE_12__ {int nCol; int eDetail; } ;
typedef  TYPE_4__ Fts5VocabTable ;
typedef  TYPE_5__ Fts5VocabCursor ;

/* Variables and functions */
 int FTS5_CORRUPT ; 
 int FTS5_DETAIL_COLUMNS ; 
 int FTS5_DETAIL_FULL ; 
 int FTS5_DETAIL_NONE ; 
 int FUNC0 (int) ; 
#define  FTS5_VOCAB_COL 129 
 int FTS5_VOCAB_INSTANCE ; 
#define  FTS5_VOCAB_ROW 128 
 int FUNC1 (int,int) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_5__*) ; 
 int FUNC5 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_9__*,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__*) ; 
 char* FUNC10 (TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int,int*,int*) ; 

__attribute__((used)) static int FUNC12(sqlite3_vtab_cursor *pCursor){
  Fts5VocabCursor *pCsr = (Fts5VocabCursor*)pCursor;
  Fts5VocabTable *pTab = (Fts5VocabTable*)pCursor->pVtab;
  int rc = SQLITE_OK;
  int nCol = pCsr->pFts5->pConfig->nCol;

  pCsr->rowid++;

  if( pTab->eType==FTS5_VOCAB_INSTANCE ){
    return FUNC4(pCsr);
  }

  if( pTab->eType==FTS5_VOCAB_COL ){
    for(pCsr->iCol++; pCsr->iCol<nCol; pCsr->iCol++){
      if( pCsr->aDoc[pCsr->iCol] ) break;
    }
  }

  if( pTab->eType!=FTS5_VOCAB_COL || pCsr->iCol>=nCol ){
    if( FUNC8(pCsr->pIter) ){
      pCsr->bEof = 1;
    }else{
      const char *zTerm;
      int nTerm;

      zTerm = FUNC10(pCsr->pIter, &nTerm);
      FUNC2( nTerm>=0 );
      if( pCsr->nLeTerm>=0 ){
        int nCmp = FUNC1(nTerm, pCsr->nLeTerm);
        int bCmp = FUNC5(pCsr->zLeTerm, zTerm, nCmp);
        if( bCmp<0 || (bCmp==0 && pCsr->nLeTerm<nTerm) ){
          pCsr->bEof = 1;
          return SQLITE_OK;
        }
      }

      FUNC7(&rc, &pCsr->term, nTerm, (const u8*)zTerm);
      FUNC6(pCsr->aCnt, 0, nCol * sizeof(i64));
      FUNC6(pCsr->aDoc, 0, nCol * sizeof(i64));
      pCsr->iCol = 0;

      FUNC2( pTab->eType==FTS5_VOCAB_COL || pTab->eType==FTS5_VOCAB_ROW );
      while( rc==SQLITE_OK ){
        int eDetail = pCsr->pFts5->pConfig->eDetail;
        const u8 *pPos; int nPos;   /* Position list */
        i64 iPos = 0;               /* 64-bit position read from poslist */
        int iOff = 0;               /* Current offset within position list */

        pPos = pCsr->pIter->pData;
        nPos = pCsr->pIter->nData;

        switch( pTab->eType ){
          case FTS5_VOCAB_ROW:
            if( eDetail==FTS5_DETAIL_FULL ){
              while( 0==FUNC11(pPos, nPos, &iOff, &iPos) ){
                pCsr->aCnt[0]++;
              }
            }
            pCsr->aDoc[0]++;
            break;

          case FTS5_VOCAB_COL:
            if( eDetail==FTS5_DETAIL_FULL ){
              int iCol = -1;
              while( 0==FUNC11(pPos, nPos, &iOff, &iPos) ){
                int ii = FUNC0(iPos);
                if( iCol!=ii ){
                  if( ii>=nCol ){
                    rc = FTS5_CORRUPT;
                    break;
                  }
                  pCsr->aDoc[ii]++;
                  iCol = ii;
                }
                pCsr->aCnt[ii]++;
              }
            }else if( eDetail==FTS5_DETAIL_COLUMNS ){
              while( 0==FUNC11(pPos, nPos, &iOff,&iPos) ){
                FUNC3( iPos>=0 && iPos<nCol );
                if( iPos>=nCol ){
                  rc = FTS5_CORRUPT;
                  break;
                }
                pCsr->aDoc[iPos]++;
              }
            }else{
              FUNC2( eDetail==FTS5_DETAIL_NONE );
              pCsr->aDoc[0]++;
            }
            break;

          default:
            FUNC2( pTab->eType==FTS5_VOCAB_INSTANCE );
            break;
        }

        if( rc==SQLITE_OK ){
          rc = FUNC9(pCsr->pIter);
        }
        if( pTab->eType==FTS5_VOCAB_INSTANCE ) break;

        if( rc==SQLITE_OK ){
          zTerm = FUNC10(pCsr->pIter, &nTerm);
          if( nTerm!=pCsr->term.n 
          || (nTerm>0 && FUNC5(zTerm, pCsr->term.p, nTerm)) 
          ){
            break;
          }
          if( FUNC8(pCsr->pIter) ) break;
        }
      }
    }
  }

  if( rc==SQLITE_OK && pCsr->bEof==0 && pTab->eType==FTS5_VOCAB_COL ){
    while( pCsr->aDoc[pCsr->iCol]==0 ) pCsr->iCol++;
    FUNC2( pCsr->iCol<pCsr->pFts5->pConfig->nCol );
  }
  return rc;
}