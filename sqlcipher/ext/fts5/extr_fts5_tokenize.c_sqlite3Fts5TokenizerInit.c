
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct BuiltinTokenizer TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fts5_tokenizer ;
struct TYPE_7__ {int (* xCreateTokenizer ) (TYPE_2__*,char const*,void*,int *,int ) ;} ;
typedef TYPE_2__ fts5_api ;
struct BuiltinTokenizer {char const* zName; int x; } ;
struct TYPE_6__ {int member_2; int member_1; int member_0; } ;


 int ArraySize (TYPE_5__*) ;
 int SQLITE_OK ;
 int fts5AsciiCreate ;
 int fts5AsciiDelete ;
 int fts5AsciiTokenize ;
 int fts5PorterCreate ;
 int fts5PorterDelete ;
 int fts5PorterTokenize ;
 int fts5UnicodeCreate ;
 int fts5UnicodeDelete ;
 int fts5UnicodeTokenize ;
 int stub1 (TYPE_2__*,char const*,void*,int *,int ) ;

int sqlite3Fts5TokenizerInit(fts5_api *pApi){
  struct BuiltinTokenizer {
    const char *zName;
    fts5_tokenizer x;
  } aBuiltin[] = {
    { "unicode61", {fts5UnicodeCreate, fts5UnicodeDelete, fts5UnicodeTokenize}},
    { "ascii", {fts5AsciiCreate, fts5AsciiDelete, fts5AsciiTokenize }},
    { "porter", {fts5PorterCreate, fts5PorterDelete, fts5PorterTokenize }},
  };

  int rc = SQLITE_OK;
  int i;

  for(i=0; rc==SQLITE_OK && i<ArraySize(aBuiltin); i++){
    rc = pApi->xCreateTokenizer(pApi,
        aBuiltin[i].zName,
        (void*)pApi,
        &aBuiltin[i].x,
        0
    );
  }

  return rc;
}
