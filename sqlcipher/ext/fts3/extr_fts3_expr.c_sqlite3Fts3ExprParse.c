
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer ;
typedef int Fts3Expr ;


 int SQLITE_ERROR ;
 char const* SQLITE_FTS3_MAX_EXPR_DEPTH ;
 int SQLITE_OK ;
 int SQLITE_TOOBIG ;
 int fts3ExprBalance (int **,char const*) ;
 int fts3ExprCheckDepth (int *,char const*) ;
 int fts3ExprParseUnbalanced (int *,int,char**,int,int,int,char const*,int,int **) ;
 int sqlite3Fts3ErrMsg (char**,char*,char const*) ;
 int sqlite3Fts3ExprFree (int *) ;

int sqlite3Fts3ExprParse(
  sqlite3_tokenizer *pTokenizer,
  int iLangid,
  char **azCol,
  int bFts4,
  int nCol,
  int iDefaultCol,
  const char *z, int n,
  Fts3Expr **ppExpr,
  char **pzErr
){
  int rc = fts3ExprParseUnbalanced(
      pTokenizer, iLangid, azCol, bFts4, nCol, iDefaultCol, z, n, ppExpr
  );



  if( rc==SQLITE_OK && *ppExpr ){
    rc = fts3ExprBalance(ppExpr, SQLITE_FTS3_MAX_EXPR_DEPTH);
    if( rc==SQLITE_OK ){
      rc = fts3ExprCheckDepth(*ppExpr, SQLITE_FTS3_MAX_EXPR_DEPTH);
    }
  }

  if( rc!=SQLITE_OK ){
    sqlite3Fts3ExprFree(*ppExpr);
    *ppExpr = 0;
    if( rc==SQLITE_TOOBIG ){
      sqlite3Fts3ErrMsg(pzErr,
          "FTS expression tree is too large (maximum depth %d)",
          SQLITE_FTS3_MAX_EXPR_DEPTH
      );
      rc = SQLITE_ERROR;
    }else if( rc==SQLITE_ERROR ){
      sqlite3Fts3ErrMsg(pzErr, "malformed MATCH expression: [%s]", z);
    }
  }

  return rc;
}
