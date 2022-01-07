
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nCol; int * azCol; } ;
struct TYPE_9__ {scalar_t__ rc; TYPE_3__* pConfig; } ;
struct TYPE_8__ {int n; int p; } ;
typedef TYPE_1__ Fts5Token ;
typedef TYPE_2__ Fts5Parse ;
typedef TYPE_3__ Fts5Config ;
typedef char Fts5Colset ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 char* fts5ParseColset (TYPE_2__*,char*,int) ;
 int sqlite3Fts5Dequote (char*) ;
 int sqlite3Fts5ParseError (TYPE_2__*,char*,char*) ;
 char* sqlite3Fts5Strndup (scalar_t__*,int ,int ) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_stricmp (int ,char*) ;

Fts5Colset *sqlite3Fts5ParseColset(
  Fts5Parse *pParse,
  Fts5Colset *pColset,
  Fts5Token *p
){
  Fts5Colset *pRet = 0;
  int iCol;
  char *z;

  z = sqlite3Fts5Strndup(&pParse->rc, p->p, p->n);
  if( pParse->rc==SQLITE_OK ){
    Fts5Config *pConfig = pParse->pConfig;
    sqlite3Fts5Dequote(z);
    for(iCol=0; iCol<pConfig->nCol; iCol++){
      if( 0==sqlite3_stricmp(pConfig->azCol[iCol], z) ) break;
    }
    if( iCol==pConfig->nCol ){
      sqlite3Fts5ParseError(pParse, "no such column: %s", z);
    }else{
      pRet = fts5ParseColset(pParse, pColset, iCol);
    }
    sqlite3_free(z);
  }

  if( pRet==0 ){
    assert( pParse->rc!=SQLITE_OK );
    sqlite3_free(pColset);
  }

  return pRet;
}
