
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* aiException; int nException; unsigned char* aTokenChar; int* aCategory; } ;
typedef TYPE_1__ Unicode61Tokenizer ;


 int READ_UTF8 (unsigned char const*,unsigned char const*,int) ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memmove (int*,int*,int) ;
 size_t sqlite3Fts5UnicodeCategory (int) ;
 scalar_t__ sqlite3Fts5UnicodeIsdiacritic (int) ;
 scalar_t__ sqlite3_realloc64 (int*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts5UnicodeAddExceptions(
  Unicode61Tokenizer *p,
  const char *z,
  int bTokenChars
){
  int rc = SQLITE_OK;
  int n = (int)strlen(z);
  int *aNew;

  if( n>0 ){
    aNew = (int*)sqlite3_realloc64(p->aiException,
                                   (n+p->nException)*sizeof(int));
    if( aNew ){
      int nNew = p->nException;
      const unsigned char *zCsr = (const unsigned char*)z;
      const unsigned char *zTerm = (const unsigned char*)&z[n];
      while( zCsr<zTerm ){
        u32 iCode;
        int bToken;
        READ_UTF8(zCsr, zTerm, iCode);
        if( iCode<128 ){
          p->aTokenChar[iCode] = (unsigned char)bTokenChars;
        }else{
          bToken = p->aCategory[sqlite3Fts5UnicodeCategory(iCode)];
          assert( (bToken==0 || bToken==1) );
          assert( (bTokenChars==0 || bTokenChars==1) );
          if( bToken!=bTokenChars && sqlite3Fts5UnicodeIsdiacritic(iCode)==0 ){
            int i;
            for(i=0; i<nNew; i++){
              if( (u32)aNew[i]>iCode ) break;
            }
            memmove(&aNew[i+1], &aNew[i], (nNew-i)*sizeof(int));
            aNew[i] = iCode;
            nNew++;
          }
        }
      }
      p->aiException = aNew;
      p->nException = nNew;
    }else{
      rc = SQLITE_NOMEM;
    }
  }

  return rc;
}
