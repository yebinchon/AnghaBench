
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_tokenizer_cursor ;
typedef int sqlite3_tokenizer ;
struct TYPE_2__ {char const* pInput; int nBytes; int base; scalar_t__ nTokenAllocated; int * pToken; scalar_t__ iToken; scalar_t__ iOffset; } ;
typedef TYPE_1__ simple_tokenizer_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int simpleOpen(
  sqlite3_tokenizer *pTokenizer,
  const char *pInput, int nBytes,
  sqlite3_tokenizer_cursor **ppCursor
){
  simple_tokenizer_cursor *c;

  c = (simple_tokenizer_cursor *) sqlite3_malloc(sizeof(*c));
  if( c==((void*)0) ) return SQLITE_NOMEM;

  c->pInput = pInput;
  if( pInput==0 ){
    c->nBytes = 0;
  }else if( nBytes<0 ){
    c->nBytes = (int)strlen(pInput);
  }else{
    c->nBytes = nBytes;
  }
  c->iOffset = 0;
  c->iToken = 0;
  c->pToken = ((void*)0);
  c->nTokenAllocated = 0;

  *ppCursor = &c->base;
  return SQLITE_OK;
}
