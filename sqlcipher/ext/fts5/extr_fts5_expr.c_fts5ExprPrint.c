
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int * azCol; } ;
struct TYPE_11__ {int nPhrase; int nNear; TYPE_2__** apPhrase; TYPE_1__* pColset; } ;
struct TYPE_10__ {int eType; int nChild; struct TYPE_10__** apChild; TYPE_4__* pNear; } ;
struct TYPE_9__ {int nTerm; int * aTerm; } ;
struct TYPE_8__ {int* aiCol; } ;
typedef TYPE_2__ Fts5ExprPhrase ;
typedef TYPE_3__ Fts5ExprNode ;
typedef TYPE_4__ Fts5ExprNearset ;
typedef TYPE_5__ Fts5Config ;



 int FTS5_EOF ;

 int FTS5_OR ;
 int FTS5_STRING ;
 int FTS5_TERM ;
 int assert (int) ;
 char* fts5ExprTermPrint (int *) ;
 char* fts5PrintfAppend (char*,char*,...) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*) ;

__attribute__((used)) static char *fts5ExprPrint(Fts5Config *pConfig, Fts5ExprNode *pExpr){
  char *zRet = 0;
  if( pExpr->eType==0 ){
    return sqlite3_mprintf("\"\"");
  }else
  if( pExpr->eType==FTS5_STRING || pExpr->eType==FTS5_TERM ){
    Fts5ExprNearset *pNear = pExpr->pNear;
    int i;
    int iTerm;

    if( pNear->pColset ){
      int iCol = pNear->pColset->aiCol[0];
      zRet = fts5PrintfAppend(zRet, "%s : ", pConfig->azCol[iCol]);
      if( zRet==0 ) return 0;
    }

    if( pNear->nPhrase>1 ){
      zRet = fts5PrintfAppend(zRet, "NEAR(");
      if( zRet==0 ) return 0;
    }

    for(i=0; i<pNear->nPhrase; i++){
      Fts5ExprPhrase *pPhrase = pNear->apPhrase[i];
      if( i!=0 ){
        zRet = fts5PrintfAppend(zRet, " ");
        if( zRet==0 ) return 0;
      }
      for(iTerm=0; iTerm<pPhrase->nTerm; iTerm++){
        char *zTerm = fts5ExprTermPrint(&pPhrase->aTerm[iTerm]);
        if( zTerm ){
          zRet = fts5PrintfAppend(zRet, "%s%s", iTerm==0?"":" + ", zTerm);
          sqlite3_free(zTerm);
        }
        if( zTerm==0 || zRet==0 ){
          sqlite3_free(zRet);
          return 0;
        }
      }
    }

    if( pNear->nPhrase>1 ){
      zRet = fts5PrintfAppend(zRet, ", %d)", pNear->nNear);
      if( zRet==0 ) return 0;
    }

  }else{
    char const *zOp = 0;
    int i;

    switch( pExpr->eType ){
      case 129: zOp = " AND "; break;
      case 128: zOp = " NOT "; break;
      default:
        assert( pExpr->eType==FTS5_OR );
        zOp = " OR ";
        break;
    }

    for(i=0; i<pExpr->nChild; i++){
      char *z = fts5ExprPrint(pConfig, pExpr->apChild[i]);
      if( z==0 ){
        sqlite3_free(zRet);
        zRet = 0;
      }else{
        int e = pExpr->apChild[i]->eType;
        int b = (e!=FTS5_STRING && e!=FTS5_TERM && e!=FTS5_EOF);
        zRet = fts5PrintfAppend(zRet, "%s%s%z%s",
            (i==0 ? "" : zOp),
            (b?"(":""), z, (b?")":"")
        );
      }
      if( zRet==0 ) break;
    }
  }

  return zRet;
}
