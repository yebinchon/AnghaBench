
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nPrefix; int* aPrefix; } ;
struct TYPE_4__ {int rc; int bDelete; int iWriteRowid; int pHash; TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Config ;


 char FTS5_MAIN_PREFIX ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts5HashWrite (int ,int ,int,int,char,char const*,int) ;
 int sqlite3Fts5IndexCharlenToBytelen (char const*,int,int const) ;

int sqlite3Fts5IndexWrite(
  Fts5Index *p,
  int iCol,
  int iPos,
  const char *pToken, int nToken
){
  int i;
  int rc = SQLITE_OK;
  Fts5Config *pConfig = p->pConfig;

  assert( p->rc==SQLITE_OK );
  assert( (iCol<0)==p->bDelete );


  rc = sqlite3Fts5HashWrite(
      p->pHash, p->iWriteRowid, iCol, iPos, FTS5_MAIN_PREFIX, pToken, nToken
  );

  for(i=0; i<pConfig->nPrefix && rc==SQLITE_OK; i++){
    const int nChar = pConfig->aPrefix[i];
    int nByte = sqlite3Fts5IndexCharlenToBytelen(pToken, nToken, nChar);
    if( nByte ){
      rc = sqlite3Fts5HashWrite(p->pHash,
          p->iWriteRowid, iCol, iPos, (char)(FTS5_MAIN_PREFIX+i+1), pToken,
          nByte
      );
    }
  }

  return rc;
}
