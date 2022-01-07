
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_tokenizer_cursor ;
struct TYPE_3__ {struct TYPE_3__* zToken; } ;
typedef TYPE_1__ simple_tokenizer_cursor ;


 int SQLITE_OK ;
 int free (TYPE_1__*) ;

__attribute__((used)) static int simpleClose(sqlite3_tokenizer_cursor *pCursor){
  simple_tokenizer_cursor *c = (simple_tokenizer_cursor *) pCursor;

  if( ((void*)0)!=c->zToken ){
    free(c->zToken);
  }
  free(c);

  return SQLITE_OK;
}
