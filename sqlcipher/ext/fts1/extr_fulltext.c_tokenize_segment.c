
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* xOpen ) (TYPE_3__*,char const*,int,TYPE_2__**) ;int (* xNext ) (TYPE_2__*,char const**,int*,int*,int*,int*) ;int (* xClose ) (TYPE_2__*) ;} ;
typedef TYPE_1__ sqlite3_tokenizer_module ;
struct TYPE_10__ {TYPE_3__* pTokenizer; } ;
typedef TYPE_2__ sqlite3_tokenizer_cursor ;
struct TYPE_11__ {TYPE_1__* pModule; } ;
typedef TYPE_3__ sqlite3_tokenizer ;
typedef int Query ;


 int SQLITE_OK ;
 int query_add (int *,int,int ) ;
 int string_dup_n (char const*,int) ;
 int stub1 (TYPE_3__*,char const*,int,TYPE_2__**) ;
 int stub2 (TYPE_2__*,char const**,int*,int*,int*,int*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static int tokenize_segment(sqlite3_tokenizer *pTokenizer,
                            const char *zQuery, int in_phrase,
                            Query *pQuery){
  sqlite3_tokenizer_module *pModule = pTokenizer->pModule;
  sqlite3_tokenizer_cursor *pCursor;
  int is_first = 1;

  int rc = pModule->xOpen(pTokenizer, zQuery, -1, &pCursor);
  if( rc!=SQLITE_OK ) return rc;
  pCursor->pTokenizer = pTokenizer;

  while( 1 ){
    const char *zToken;
    int nToken, iStartOffset, iEndOffset, dummy_pos;

    rc = pModule->xNext(pCursor,
                        &zToken, &nToken,
                        &iStartOffset, &iEndOffset,
                        &dummy_pos);
    if( rc!=SQLITE_OK ) break;
    query_add(pQuery, !in_phrase || is_first, string_dup_n(zToken, nToken));
    is_first = 0;
  }

  return pModule->xClose(pCursor);
}
