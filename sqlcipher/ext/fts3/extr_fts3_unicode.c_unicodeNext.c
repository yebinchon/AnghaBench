
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int eRemoveDiacritic; } ;
typedef TYPE_2__ unicode_tokenizer ;
struct TYPE_5__ {scalar_t__ pTokenizer; } ;
struct TYPE_7__ {unsigned char* aInput; size_t iOff; size_t nInput; char* zToken; int nAlloc; int iToken; TYPE_1__ base; } ;
typedef TYPE_3__ unicode_cursor ;
typedef int sqlite3_tokenizer_cursor ;


 int READ_UTF8 (unsigned char const*,unsigned char const*,unsigned int) ;
 int SQLITE_DONE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int WRITE_UTF8 (char*,int) ;
 int sqlite3FtsUnicodeFold (int,int ) ;
 scalar_t__ sqlite3FtsUnicodeIsdiacritic (int) ;
 char* sqlite3_realloc64 (char*,int) ;
 scalar_t__ unicodeIsAlnum (TYPE_2__*,int) ;

__attribute__((used)) static int unicodeNext(
  sqlite3_tokenizer_cursor *pC,
  const char **paToken,
  int *pnToken,
  int *piStart,
  int *piEnd,
  int *piPos
){
  unicode_cursor *pCsr = (unicode_cursor *)pC;
  unicode_tokenizer *p = ((unicode_tokenizer *)pCsr->base.pTokenizer);
  unsigned int iCode = 0;
  char *zOut;
  const unsigned char *z = &pCsr->aInput[pCsr->iOff];
  const unsigned char *zStart = z;
  const unsigned char *zEnd;
  const unsigned char *zTerm = &pCsr->aInput[pCsr->nInput];




  while( z<zTerm ){
    READ_UTF8(z, zTerm, iCode);
    if( unicodeIsAlnum(p, (int)iCode) ) break;
    zStart = z;
  }
  if( zStart>=zTerm ) return SQLITE_DONE;

  zOut = pCsr->zToken;
  do {
    int iOut;


    if( (zOut-pCsr->zToken)>=(pCsr->nAlloc-4) ){
      char *zNew = sqlite3_realloc64(pCsr->zToken, pCsr->nAlloc+64);
      if( !zNew ) return SQLITE_NOMEM;
      zOut = &zNew[zOut - pCsr->zToken];
      pCsr->zToken = zNew;
      pCsr->nAlloc += 64;
    }


    zEnd = z;
    iOut = sqlite3FtsUnicodeFold((int)iCode, p->eRemoveDiacritic);
    if( iOut ){
      WRITE_UTF8(zOut, iOut);
    }


    if( z>=zTerm ) break;
    READ_UTF8(z, zTerm, iCode);
  }while( unicodeIsAlnum(p, (int)iCode)
       || sqlite3FtsUnicodeIsdiacritic((int)iCode)
  );


  pCsr->iOff = (int)(z - pCsr->aInput);
  *paToken = pCsr->zToken;
  *pnToken = (int)(zOut - pCsr->zToken);
  *piStart = (int)(zStart - pCsr->aInput);
  *piEnd = (int)(zEnd - pCsr->aInput);
  *piPos = pCsr->iToken++;
  return SQLITE_OK;
}
