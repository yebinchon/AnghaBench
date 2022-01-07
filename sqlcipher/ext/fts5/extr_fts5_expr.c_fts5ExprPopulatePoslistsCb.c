
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int nPhrase; TYPE_1__** apExprPhrase; } ;
struct TYPE_9__ {int iOff; TYPE_2__* aPopulator; TYPE_5__* pExpr; } ;
struct TYPE_8__ {int zTerm; scalar_t__ bPrefix; struct TYPE_8__* pSynonym; } ;
struct TYPE_7__ {scalar_t__ bOk; int writer; } ;
struct TYPE_6__ {int poslist; TYPE_3__* aTerm; } ;
typedef TYPE_3__ Fts5ExprTerm ;
typedef TYPE_4__ Fts5ExprCtx ;
typedef TYPE_5__ Fts5Expr ;


 int FTS5_MAX_TOKEN_SIZE ;
 int FTS5_TOKEN_COLOCATED ;
 int SQLITE_OK ;
 int UNUSED_PARAM2 (int,int) ;
 scalar_t__ memcmp (int ,char const*,int) ;
 int sqlite3Fts5PoslistWriterAppend (int *,int *,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int fts5ExprPopulatePoslistsCb(
  void *pCtx,
  int tflags,
  const char *pToken,
  int nToken,
  int iUnused1,
  int iUnused2
){
  Fts5ExprCtx *p = (Fts5ExprCtx*)pCtx;
  Fts5Expr *pExpr = p->pExpr;
  int i;

  UNUSED_PARAM2(iUnused1, iUnused2);

  if( nToken>FTS5_MAX_TOKEN_SIZE ) nToken = FTS5_MAX_TOKEN_SIZE;
  if( (tflags & FTS5_TOKEN_COLOCATED)==0 ) p->iOff++;
  for(i=0; i<pExpr->nPhrase; i++){
    Fts5ExprTerm *pTerm;
    if( p->aPopulator[i].bOk==0 ) continue;
    for(pTerm=&pExpr->apExprPhrase[i]->aTerm[0]; pTerm; pTerm=pTerm->pSynonym){
      int nTerm = (int)strlen(pTerm->zTerm);
      if( (nTerm==nToken || (nTerm<nToken && pTerm->bPrefix))
       && memcmp(pTerm->zTerm, pToken, nTerm)==0
      ){
        int rc = sqlite3Fts5PoslistWriterAppend(
            &pExpr->apExprPhrase[i]->poslist, &p->aPopulator[i].writer, p->iOff
        );
        if( rc ) return rc;
        break;
      }
    }
  }
  return SQLITE_OK;
}
