#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {size_t iRow; int iLang; char* zPattern; int iTop; int iScope; int nSearch; TYPE_1__* a; scalar_t__ pFullScan; } ;
typedef  TYPE_2__ spellfix1_cursor ;
struct TYPE_3__ {char* zWord; int iRank; int iDistance; int iScore; int iMatchlen; char* zHash; } ;

/* Variables and functions */
#define  SPELLFIX_COL_DISTANCE 137 
#define  SPELLFIX_COL_LANGID 136 
#define  SPELLFIX_COL_MATCHLEN 135 
#define  SPELLFIX_COL_PHONEHASH 134 
#define  SPELLFIX_COL_RANK 133 
#define  SPELLFIX_COL_SCOPE 132 
#define  SPELLFIX_COL_SCORE 131 
#define  SPELLFIX_COL_SRCHCNT 130 
#define  SPELLFIX_COL_TOP 129 
#define  SPELLFIX_COL_WORD 128 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char*,int,int) ; 
 scalar_t__ FUNC9 (unsigned char*,int) ; 
 int FUNC10 (char*,int) ; 

__attribute__((used)) static int FUNC11(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  spellfix1_cursor *pCur = (spellfix1_cursor*)cur;
  if( pCur->pFullScan ){
    if( i<=SPELLFIX_COL_LANGID ){
      FUNC6(ctx, FUNC1(pCur->pFullScan, i));
    }else{
      FUNC4(ctx);
    }
    return SQLITE_OK;
  }
  switch( i ){
    case SPELLFIX_COL_WORD: {
      FUNC5(ctx, pCur->a[pCur->iRow].zWord, -1, SQLITE_STATIC);
      break;
    }
    case SPELLFIX_COL_RANK: {
      FUNC3(ctx, pCur->a[pCur->iRow].iRank);
      break;
    }
    case SPELLFIX_COL_DISTANCE: {
      FUNC3(ctx, pCur->a[pCur->iRow].iDistance);
      break;
    }
    case SPELLFIX_COL_LANGID: {
      FUNC3(ctx, pCur->iLang);
      break;
    }
    case SPELLFIX_COL_SCORE: {
      FUNC3(ctx, pCur->a[pCur->iRow].iScore);
      break;
    }
    case SPELLFIX_COL_MATCHLEN: {
      int iMatchlen = pCur->a[pCur->iRow].iMatchlen;
      if( iMatchlen<0 ){
        int nPattern = (int)FUNC7(pCur->zPattern);
        char *zWord = pCur->a[pCur->iRow].zWord;
        int nWord = (int)FUNC7(zWord);

        if( nPattern>0 && pCur->zPattern[nPattern-1]=='*' ){
          char *zTranslit;
          int res;
          zTranslit = (char *)FUNC9((unsigned char *)zWord, nWord);
          if( !zTranslit ) return SQLITE_NOMEM;
          res = FUNC0(pCur->zPattern, zTranslit, &iMatchlen);
          FUNC2(zTranslit);
          if( res<0 ) return SQLITE_NOMEM;
          iMatchlen = FUNC8(zWord, nWord, iMatchlen);
        }else{
          iMatchlen = FUNC10(zWord, nWord);
        }
      }

      FUNC3(ctx, iMatchlen);
      break;
    }
    case SPELLFIX_COL_PHONEHASH: {
      FUNC5(ctx, pCur->a[pCur->iRow].zHash, -1, SQLITE_STATIC);
      break;
    }
    case SPELLFIX_COL_TOP: {
      FUNC3(ctx, pCur->iTop);
      break;
    }
    case SPELLFIX_COL_SCOPE: {
      FUNC3(ctx, pCur->iScope);
      break;
    }
    case SPELLFIX_COL_SRCHCNT: {
      FUNC3(ctx, pCur->nSearch);
      break;
    }
    default: {
      FUNC4(ctx);
      break;
    }
  }
  return SQLITE_OK;
}