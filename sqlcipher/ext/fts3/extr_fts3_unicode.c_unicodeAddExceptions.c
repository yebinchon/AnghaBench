
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* aiException; int nException; } ;
typedef TYPE_1__ unicode_tokenizer ;


 int READ_UTF8 (unsigned char const*,unsigned char const*,unsigned int) ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3FtsUnicodeIsalnum (int) ;
 scalar_t__ sqlite3FtsUnicodeIsdiacritic (int) ;
 int* sqlite3_realloc64 (int*,int) ;

__attribute__((used)) static int unicodeAddExceptions(
  unicode_tokenizer *p,
  int bAlnum,
  const char *zIn,
  int nIn
){
  const unsigned char *z = (const unsigned char *)zIn;
  const unsigned char *zTerm = &z[nIn];
  unsigned int iCode;
  int nEntry = 0;

  assert( bAlnum==0 || bAlnum==1 );

  while( z<zTerm ){
    READ_UTF8(z, zTerm, iCode);
    assert( (sqlite3FtsUnicodeIsalnum((int)iCode) & 0xFFFFFFFE)==0 );
    if( sqlite3FtsUnicodeIsalnum((int)iCode)!=bAlnum
     && sqlite3FtsUnicodeIsdiacritic((int)iCode)==0
    ){
      nEntry++;
    }
  }

  if( nEntry ){
    int *aNew;
    int nNew;

    aNew = sqlite3_realloc64(p->aiException,(p->nException+nEntry)*sizeof(int));
    if( aNew==0 ) return SQLITE_NOMEM;
    nNew = p->nException;

    z = (const unsigned char *)zIn;
    while( z<zTerm ){
      READ_UTF8(z, zTerm, iCode);
      if( sqlite3FtsUnicodeIsalnum((int)iCode)!=bAlnum
       && sqlite3FtsUnicodeIsdiacritic((int)iCode)==0
      ){
        int i, j;
        for(i=0; i<nNew && aNew[i]<(int)iCode; i++);
        for(j=nNew; j>i; j--) aNew[j] = aNew[j-1];
        aNew[i] = (int)iCode;
        nNew++;
      }
    }
    p->aiException = aNew;
    p->nException = nNew;
  }

  return SQLITE_OK;
}
