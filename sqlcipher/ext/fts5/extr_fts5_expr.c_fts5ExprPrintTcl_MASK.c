#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nPhrase; char* nNear; TYPE_3__** apPhrase; TYPE_1__* pColset; } ;
struct TYPE_10__ {int eType; int nChild; struct TYPE_10__** apChild; TYPE_5__* pNear; } ;
struct TYPE_9__ {int nTerm; TYPE_2__* aTerm; } ;
struct TYPE_8__ {char* zTerm; scalar_t__ bPrefix; } ;
struct TYPE_7__ {int* aiCol; int nCol; } ;
typedef  TYPE_3__ Fts5ExprPhrase ;
typedef  TYPE_4__ Fts5ExprNode ;
typedef  TYPE_5__ Fts5ExprNearset ;
typedef  int /*<<< orphan*/  Fts5Config ;

/* Variables and functions */
#define  FTS5_AND 129 
#define  FTS5_NOT 128 
 int FTS5_OR ; 
 int FTS5_STRING ; 
 int FTS5_TERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static char *FUNC4(
  Fts5Config *pConfig, 
  const char *zNearsetCmd,
  Fts5ExprNode *pExpr
){
  char *zRet = 0;
  if( pExpr->eType==FTS5_STRING || pExpr->eType==FTS5_TERM ){
    Fts5ExprNearset *pNear = pExpr->pNear;
    int i; 
    int iTerm;

    zRet = FUNC1(zRet, "%s ", zNearsetCmd);
    if( zRet==0 ) return 0;
    if( pNear->pColset ){
      int *aiCol = pNear->pColset->aiCol;
      int nCol = pNear->pColset->nCol;
      if( nCol==1 ){
        zRet = FUNC1(zRet, "-col %d ", aiCol[0]);
      }else{
        zRet = FUNC1(zRet, "-col {%d", aiCol[0]);
        for(i=1; i<pNear->pColset->nCol; i++){
          zRet = FUNC1(zRet, " %d", aiCol[i]);
        }
        zRet = FUNC1(zRet, "} ");
      }
      if( zRet==0 ) return 0;
    }

    if( pNear->nPhrase>1 ){
      zRet = FUNC1(zRet, "-near %d ", pNear->nNear);
      if( zRet==0 ) return 0;
    }

    zRet = FUNC1(zRet, "--");
    if( zRet==0 ) return 0;

    for(i=0; i<pNear->nPhrase; i++){
      Fts5ExprPhrase *pPhrase = pNear->apPhrase[i];

      zRet = FUNC1(zRet, " {");
      for(iTerm=0; zRet && iTerm<pPhrase->nTerm; iTerm++){
        char *zTerm = pPhrase->aTerm[iTerm].zTerm;
        zRet = FUNC1(zRet, "%s%s", iTerm==0?"":" ", zTerm);
        if( pPhrase->aTerm[iTerm].bPrefix ){
          zRet = FUNC1(zRet, "*");
        }
      }

      if( zRet ) zRet = FUNC1(zRet, "}");
      if( zRet==0 ) return 0;
    }

  }else{
    char const *zOp = 0;
    int i;
    switch( pExpr->eType ){
      case FTS5_AND: zOp = "AND"; break;
      case FTS5_NOT: zOp = "NOT"; break;
      default: 
        FUNC0( pExpr->eType==FTS5_OR );
        zOp = "OR"; 
        break;
    }

    zRet = FUNC3("%s", zOp);
    for(i=0; zRet && i<pExpr->nChild; i++){
      char *z = FUNC4(pConfig, zNearsetCmd, pExpr->apChild[i]);
      if( !z ){
        FUNC2(zRet);
        zRet = 0;
      }else{
        zRet = FUNC1(zRet, " [%z]", z);
      }
    }
  }

  return zRet;
}