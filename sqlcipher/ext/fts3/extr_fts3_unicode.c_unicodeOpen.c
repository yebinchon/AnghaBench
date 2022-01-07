
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* aInput; int nInput; int base; } ;
typedef TYPE_1__ unicode_cursor ;
typedef int sqlite3_tokenizer_cursor ;
typedef int sqlite3_tokenizer ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int unicodeOpen(
  sqlite3_tokenizer *p,
  const char *aInput,
  int nInput,
  sqlite3_tokenizer_cursor **pp
){
  unicode_cursor *pCsr;

  pCsr = (unicode_cursor *)sqlite3_malloc(sizeof(unicode_cursor));
  if( pCsr==0 ){
    return SQLITE_NOMEM;
  }
  memset(pCsr, 0, sizeof(unicode_cursor));

  pCsr->aInput = (const unsigned char *)aInput;
  if( aInput==0 ){
    pCsr->nInput = 0;
  }else if( nInput<0 ){
    pCsr->nInput = (int)strlen(aInput);
  }else{
    pCsr->nInput = nInput;
  }

  *pp = &pCsr->base;
  UNUSED_PARAMETER(p);
  return SQLITE_OK;
}
