
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pTokenizer; } ;
typedef TYPE_1__ sqlite3_tokenizer_cursor ;
struct TYPE_5__ {size_t iOffset; size_t nBytes; int nTokenAllocated; unsigned char* pToken; int iToken; scalar_t__ pInput; } ;
typedef TYPE_2__ simple_tokenizer_cursor ;
typedef int simple_tokenizer ;


 int SQLITE_DONE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ isDelim (int *,unsigned char) ;
 unsigned char* realloc (unsigned char*,int) ;
 unsigned char tolower (unsigned char) ;

__attribute__((used)) static int simpleNext(
  sqlite3_tokenizer_cursor *pCursor,
  const char **ppToken,
  int *pnBytes,
  int *piStartOffset,
  int *piEndOffset,
  int *piPosition
){
  simple_tokenizer_cursor *c = (simple_tokenizer_cursor *) pCursor;
  simple_tokenizer *t = (simple_tokenizer *) pCursor->pTokenizer;
  unsigned char *p = (unsigned char *)c->pInput;

  while( c->iOffset<c->nBytes ){
    int iStartOffset;


    while( c->iOffset<c->nBytes && isDelim(t, p[c->iOffset]) ){
      c->iOffset++;
    }


    iStartOffset = c->iOffset;
    while( c->iOffset<c->nBytes && !isDelim(t, p[c->iOffset]) ){
      c->iOffset++;
    }

    if( c->iOffset>iStartOffset ){
      int i, n = c->iOffset-iStartOffset;
      if( n>c->nTokenAllocated ){
        c->nTokenAllocated = n+20;
        c->pToken = realloc(c->pToken, c->nTokenAllocated);
        if( c->pToken==((void*)0) ) return SQLITE_NOMEM;
      }
      for(i=0; i<n; i++){



        unsigned char ch = p[iStartOffset+i];
        c->pToken[i] = ch<0x80 ? tolower(ch) : ch;
      }
      *ppToken = c->pToken;
      *pnBytes = n;
      *piStartOffset = iStartOffset;
      *piEndOffset = c->iOffset;
      *piPosition = c->iToken++;

      return SQLITE_OK;
    }
  }
  return SQLITE_DONE;
}
