
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_tokenizer_cursor ;
struct TYPE_3__ {struct TYPE_3__* zToken; } ;
typedef TYPE_1__ porter_tokenizer_cursor ;


 int SQLITE_OK ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int porterClose(sqlite3_tokenizer_cursor *pCursor){
  porter_tokenizer_cursor *c = (porter_tokenizer_cursor *) pCursor;
  sqlite3_free(c->zToken);
  sqlite3_free(c);
  return SQLITE_OK;
}
