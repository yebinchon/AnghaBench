
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pTokenizer; } ;
typedef TYPE_1__ sqlite3_tokenizer_cursor ;
struct TYPE_6__ {char* pCurrent; char* pInput; int nBytes; int nTokenAllocated; char* zToken; int iToken; } ;
typedef TYPE_2__ simple_tokenizer_cursor ;
struct TYPE_7__ {int zDelim; } ;
typedef TYPE_3__ simple_tokenizer ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 char* realloc (char*,int) ;
 scalar_t__ strcspn (char*,int ) ;
 char tolower (unsigned char) ;

__attribute__((used)) static int simpleNext(
  sqlite3_tokenizer_cursor *pCursor,
  const char **ppToken, int *pnBytes,
  int *piStartOffset, int *piEndOffset, int *piPosition
){
  simple_tokenizer_cursor *c = (simple_tokenizer_cursor *) pCursor;
  simple_tokenizer *t = (simple_tokenizer *) pCursor->pTokenizer;
  int ii;

  while( c->pCurrent-c->pInput<c->nBytes ){
    int n = (int) strcspn(c->pCurrent, t->zDelim);
    if( n>0 ){
      if( n+1>c->nTokenAllocated ){
        c->zToken = realloc(c->zToken, n+1);
      }
      for(ii=0; ii<n; ii++){



        char ch = c->pCurrent[ii];
        c->zToken[ii] = (unsigned char)ch<0x80 ? tolower((unsigned char)ch):ch;
      }
      c->zToken[n] = '\0';
      *ppToken = c->zToken;
      *pnBytes = n;
      *piStartOffset = (int) (c->pCurrent-c->pInput);
      *piEndOffset = *piStartOffset+n;
      *piPosition = c->iToken++;
      c->pCurrent += n + 1;

      return SQLITE_OK;
    }
    c->pCurrent += n + 1;



  }
  return SQLITE_DONE;
}
