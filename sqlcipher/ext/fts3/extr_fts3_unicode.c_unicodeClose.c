
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* zToken; } ;
typedef TYPE_1__ unicode_cursor ;
typedef int sqlite3_tokenizer_cursor ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int unicodeClose(sqlite3_tokenizer_cursor *pCursor){
  unicode_cursor *pCsr = (unicode_cursor *) pCursor;
  sqlite3_free(pCsr->zToken);
  sqlite3_free(pCsr);
  return SQLITE_OK;
}
