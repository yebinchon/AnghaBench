
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_tokenizer ;
struct TYPE_4__ {int iLangid; char const** azCol; int nCol; int iDefaultCol; int bFts4; scalar_t__ nNest; int * pTokenizer; } ;
typedef TYPE_1__ ParseContext ;
typedef int Fts3Expr ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3ExprParse (TYPE_1__*,char const*,int,int **,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts3ExprParseUnbalanced(
  sqlite3_tokenizer *pTokenizer,
  int iLangid,
  char **azCol,
  int bFts4,
  int nCol,
  int iDefaultCol,
  const char *z, int n,
  Fts3Expr **ppExpr
){
  int nParsed;
  int rc;
  ParseContext sParse;

  memset(&sParse, 0, sizeof(ParseContext));
  sParse.pTokenizer = pTokenizer;
  sParse.iLangid = iLangid;
  sParse.azCol = (const char **)azCol;
  sParse.nCol = nCol;
  sParse.iDefaultCol = iDefaultCol;
  sParse.bFts4 = bFts4;
  if( z==0 ){
    *ppExpr = 0;
    return SQLITE_OK;
  }
  if( n<0 ){
    n = (int)strlen(z);
  }
  rc = fts3ExprParse(&sParse, z, n, ppExpr, &nParsed);
  assert( rc==SQLITE_OK || *ppExpr==0 );


  if( rc==SQLITE_OK && sParse.nNest ){
    rc = SQLITE_ERROR;
  }

  return rc;
}
