
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_tokenizer_cursor ;
typedef int sqlite3_tokenizer ;
struct TYPE_2__ {char const* zInput; int nInput; int base; scalar_t__ nAllocated; int * zToken; scalar_t__ iToken; scalar_t__ iOffset; } ;
typedef TYPE_1__ porter_tokenizer_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int porterOpen(
  sqlite3_tokenizer *pTokenizer,
  const char *zInput, int nInput,
  sqlite3_tokenizer_cursor **ppCursor
){
  porter_tokenizer_cursor *c;

  c = (porter_tokenizer_cursor *) sqlite3_malloc(sizeof(*c));
  if( c==((void*)0) ) return SQLITE_NOMEM;

  c->zInput = zInput;
  if( zInput==0 ){
    c->nInput = 0;
  }else if( nInput<0 ){
    c->nInput = (int)strlen(zInput);
  }else{
    c->nInput = nInput;
  }
  c->iOffset = 0;
  c->iToken = 0;
  c->zToken = ((void*)0);
  c->nAllocated = 0;

  *ppCursor = &c->base;
  return SQLITE_OK;
}
