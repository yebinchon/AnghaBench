
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
struct TYPE_14__ {scalar_t__ xNext; } ;
struct TYPE_13__ {int nCol; } ;
struct TYPE_12__ {TYPE_9__* pRoot; } ;
typedef int Fts5Global ;
typedef TYPE_1__ Fts5Expr ;
typedef TYPE_2__ Fts5Config ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 char* fts5ExprPrint (TYPE_2__*,TYPE_9__*) ;
 char* fts5ExprPrintTcl (TYPE_2__*,char const*,TYPE_9__*) ;
 int sqlite3Fts5ConfigFree (TYPE_2__*) ;
 int sqlite3Fts5ConfigParse (int *,int *,int,char const**,TYPE_2__**,char**) ;
 int sqlite3Fts5ExprFree (TYPE_1__*) ;
 int sqlite3Fts5ExprNew (TYPE_2__*,int ,char const*,TYPE_1__**,char**) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_free (void*) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void fts5ExprFunction(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apVal,
  int bTcl
){
  Fts5Global *pGlobal = (Fts5Global*)sqlite3_user_data(pCtx);
  sqlite3 *db = sqlite3_context_db_handle(pCtx);
  const char *zExpr = 0;
  char *zErr = 0;
  Fts5Expr *pExpr = 0;
  int rc;
  int i;

  const char **azConfig;
  const char *zNearsetCmd = "nearset";
  int nConfig;
  Fts5Config *pConfig = 0;
  int iArg = 1;

  if( nArg<1 ){
    zErr = sqlite3_mprintf("wrong number of arguments to function %s",
        bTcl ? "fts5_expr_tcl" : "fts5_expr"
    );
    sqlite3_result_error(pCtx, zErr, -1);
    sqlite3_free(zErr);
    return;
  }

  if( bTcl && nArg>1 ){
    zNearsetCmd = (const char*)sqlite3_value_text(apVal[1]);
    iArg = 2;
  }

  nConfig = 3 + (nArg-iArg);
  azConfig = (const char**)sqlite3_malloc64(sizeof(char*) * nConfig);
  if( azConfig==0 ){
    sqlite3_result_error_nomem(pCtx);
    return;
  }
  azConfig[0] = 0;
  azConfig[1] = "main";
  azConfig[2] = "tbl";
  for(i=3; iArg<nArg; iArg++){
    azConfig[i++] = (const char*)sqlite3_value_text(apVal[iArg]);
  }

  zExpr = (const char*)sqlite3_value_text(apVal[0]);

  rc = sqlite3Fts5ConfigParse(pGlobal, db, nConfig, azConfig, &pConfig, &zErr);
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5ExprNew(pConfig, pConfig->nCol, zExpr, &pExpr, &zErr);
  }
  if( rc==SQLITE_OK ){
    char *zText;
    if( pExpr->pRoot->xNext==0 ){
      zText = sqlite3_mprintf("");
    }else if( bTcl ){
      zText = fts5ExprPrintTcl(pConfig, zNearsetCmd, pExpr->pRoot);
    }else{
      zText = fts5ExprPrint(pConfig, pExpr->pRoot);
    }
    if( zText==0 ){
      rc = SQLITE_NOMEM;
    }else{
      sqlite3_result_text(pCtx, zText, -1, SQLITE_TRANSIENT);
      sqlite3_free(zText);
    }
  }

  if( rc!=SQLITE_OK ){
    if( zErr ){
      sqlite3_result_error(pCtx, zErr, -1);
      sqlite3_free(zErr);
    }else{
      sqlite3_result_error_code(pCtx, rc);
    }
  }
  sqlite3_free((void *)azConfig);
  sqlite3Fts5ConfigFree(pConfig);
  sqlite3Fts5ExprFree(pExpr);
}
