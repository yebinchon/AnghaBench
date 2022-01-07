
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int p; } ;
typedef TYPE_1__ Fts5Token ;
typedef int Fts5Parse ;


 scalar_t__ memcmp (char*,int ,int) ;
 int sqlite3Fts5ParseError (int *,char*,int,int ) ;

void sqlite3Fts5ParseNear(Fts5Parse *pParse, Fts5Token *pTok){
  if( pTok->n!=4 || memcmp("NEAR", pTok->p, 4) ){
    sqlite3Fts5ParseError(
        pParse, "fts5: syntax error near \"%.*s\"", pTok->n, pTok->p
    );
  }
}
