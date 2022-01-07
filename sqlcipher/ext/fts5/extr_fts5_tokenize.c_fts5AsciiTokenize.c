
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int aFold ;
struct TYPE_2__ {unsigned char* aTokenChar; } ;
typedef int Fts5Tokenizer ;
typedef TYPE_1__ AsciiTokenizer ;


 int SQLITE_DONE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAM (int) ;
 int asciiFold (char*,char const*,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;

__attribute__((used)) static int fts5AsciiTokenize(
  Fts5Tokenizer *pTokenizer,
  void *pCtx,
  int iUnused,
  const char *pText, int nText,
  int (*xToken)(void*, int, const char*, int nToken, int iStart, int iEnd)
){
  AsciiTokenizer *p = (AsciiTokenizer*)pTokenizer;
  int rc = SQLITE_OK;
  int ie;
  int is = 0;

  char aFold[64];
  int nFold = sizeof(aFold);
  char *pFold = aFold;
  unsigned char *a = p->aTokenChar;

  UNUSED_PARAM(iUnused);

  while( is<nText && rc==SQLITE_OK ){
    int nByte;


    while( is<nText && ((pText[is]&0x80)==0 && a[(int)pText[is]]==0) ){
      is++;
    }
    if( is==nText ) break;


    ie = is+1;
    while( ie<nText && ((pText[ie]&0x80) || a[(int)pText[ie]] ) ){
      ie++;
    }


    nByte = ie-is;
    if( nByte>nFold ){
      if( pFold!=aFold ) sqlite3_free(pFold);
      pFold = sqlite3_malloc64((sqlite3_int64)nByte*2);
      if( pFold==0 ){
        rc = SQLITE_NOMEM;
        break;
      }
      nFold = nByte*2;
    }
    asciiFold(pFold, &pText[is], nByte);


    rc = xToken(pCtx, 0, pFold, nByte, is, ie);
    is = ie+1;
  }

  if( pFold!=aFold ) sqlite3_free(pFold);
  if( rc==SQLITE_DONE ) rc = SQLITE_OK;
  return rc;
}
