#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int nRow; int idxNum; int nAlloc; TYPE_1__* a; int /*<<< orphan*/  nSearch; } ;
typedef  TYPE_2__ spellfix1_cursor ;
struct TYPE_8__ {int iScope; int rc; int nRun; char** azPrior; int iMaxDist; int /*<<< orphan*/  zPattern; int /*<<< orphan*/  pLang; scalar_t__ pMatchStr3; int /*<<< orphan*/ * pStmt; TYPE_2__* pCur; } ;
struct TYPE_6__ {int iScore; char* zWord; int iRank; int iDistance; int iMatchlen; char* zHash; int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_3__ MatchQuery ;

/* Variables and functions */
 int SPELLFIX_IDXNUM_DIST ; 
 int SPELLFIX_IDXNUM_TOP ; 
 int SPELLFIX_MX_HASH ; 
 int SPELLFIX_MX_RUN ; 
 scalar_t__ SQLITE_NOMEM ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,char const*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*) ; 

__attribute__((used)) static void FUNC18(MatchQuery *p, const char *zQuery, int nQuery){
  const char *zK1;
  const char *zWord;
  int iDist;
  int iRank;
  int iScore;
  int iWorst = 0;
  int idx;
  int idxWorst = -1;
  int i;
  int iScope = p->iScope;
  spellfix1_cursor *pCur = p->pCur;
  sqlite3_stmt *pStmt = p->pStmt;
  char zHash1[SPELLFIX_MX_HASH];
  char zHash2[SPELLFIX_MX_HASH];
  char *zClass;
  int nClass;
  int rc;

  if( pCur->a==0 || p->rc ) return;   /* Prior memory allocation failure */
  zClass = (char*)FUNC4((unsigned char*)zQuery, nQuery);
  if( zClass==0 ){
    p->rc = SQLITE_NOMEM;
    return;
  }
  nClass = (int)FUNC17(zClass);
  if( nClass>SPELLFIX_MX_HASH-2 ){
    nClass = SPELLFIX_MX_HASH-2;
    zClass[nClass] = 0;
  }
  if( nClass<=iScope ){
    if( nClass>2 ){
      iScope = nClass-1;
    }else{
      iScope = nClass;
    }
  }
  FUNC3(zHash1, zClass, iScope);
  FUNC12(zClass);
  zHash1[iScope] = 0;
  FUNC3(zHash2, zHash1, iScope);
  zHash2[iScope] = 'Z';
  zHash2[iScope+1] = 0;
#if SPELLFIX_MX_RUN>1
  for(i=0; i<p->nRun; i++){
    if( strcmp(p->azPrior[i], zHash1)==0 ) return;
  }
#endif
  FUNC0( p->nRun<SPELLFIX_MX_RUN );
  FUNC3(p->azPrior[p->nRun++], zHash1, iScope+1);
  if( FUNC7(pStmt, 1, zHash1, -1, SQLITE_STATIC)==SQLITE_NOMEM
   || FUNC7(pStmt, 2, zHash2, -1, SQLITE_STATIC)==SQLITE_NOMEM
  ){
    p->rc = SQLITE_NOMEM;
    return;
  }
#if SPELLFIX_MX_RUN>1
  for(i=0; i<pCur->nRow; i++){
    if( pCur->a[i].iScore>iWorst ){
      iWorst = pCur->a[i].iScore;
      idxWorst = i;
    }
  }
#endif
  while( FUNC15(pStmt)==SQLITE_ROW ){
    int iMatchlen = -1;
    iRank = FUNC9(pStmt, 2);
    if( p->pMatchStr3 ){
      int nWord = FUNC8(pStmt, 1);
      zWord = (const char*)FUNC11(pStmt, 1);
      iDist = FUNC1(p->pMatchStr3, zWord, nWord, p->pLang, &iMatchlen);
    }else{
      zK1 = (const char*)FUNC11(pStmt, 3);
      if( zK1==0 ) continue;
      iDist = FUNC2(p->zPattern, zK1, 0);
    }
    if( iDist<0 ){
      p->rc = SQLITE_NOMEM;
      break;
    }
    pCur->nSearch++;
    
    /* If there is a "distance < $dist" or "distance <= $dist" constraint,
    ** check if this row meets it. If not, jump back up to the top of the
    ** loop to process the next row. Otherwise, if the row does match the
    ** distance constraint, check if the pCur->a[] array is already full.
    ** If it is and no explicit "top = ?" constraint was present in the
    ** query, grow the array to ensure there is room for the new entry. */
    FUNC0( (p->iMaxDist>=0)==((pCur->idxNum & SPELLFIX_IDXNUM_DIST) ? 1 : 0) );
    if( p->iMaxDist>=0 ){
      if( iDist>p->iMaxDist ) continue;
      if( pCur->nRow>=pCur->nAlloc && (pCur->idxNum & SPELLFIX_IDXNUM_TOP)==0 ){
        FUNC5(pCur, pCur->nAlloc*2 + 10);
        if( pCur->a==0 ) break;
      }
    }

    iScore = FUNC6(iDist,iRank);
    if( pCur->nRow<pCur->nAlloc ){
      idx = pCur->nRow;
    }else if( iScore<iWorst ){
      idx = idxWorst;
      FUNC12(pCur->a[idx].zWord);
    }else{
      continue;
    }

    pCur->a[idx].zWord = FUNC13("%s", FUNC11(pStmt, 1));
    if( pCur->a[idx].zWord==0 ){
      p->rc = SQLITE_NOMEM;
      break;
    }
    pCur->a[idx].iRowid = FUNC10(pStmt, 0);
    pCur->a[idx].iRank = iRank;
    pCur->a[idx].iDistance = iDist;
    pCur->a[idx].iScore = iScore;
    pCur->a[idx].iMatchlen = iMatchlen;
    FUNC3(pCur->a[idx].zHash, zHash1, iScope+1);
    if( pCur->nRow<pCur->nAlloc ) pCur->nRow++;
    if( pCur->nRow==pCur->nAlloc ){
      iWorst = pCur->a[0].iScore;
      idxWorst = 0;
      for(i=1; i<pCur->nRow; i++){
        iScore = pCur->a[i].iScore;
        if( iWorst<iScore ){
          iWorst = iScore;
          idxWorst = i;
        }
      }
    }
  }
  rc = FUNC14(pStmt);
  if( rc ) p->rc = rc;
}