
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* aFold; struct TYPE_3__* aiException; } ;
typedef TYPE_1__ Unicode61Tokenizer ;
typedef int Fts5Tokenizer ;


 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void fts5UnicodeDelete(Fts5Tokenizer *pTok){
  if( pTok ){
    Unicode61Tokenizer *p = (Unicode61Tokenizer*)pTok;
    sqlite3_free(p->aiException);
    sqlite3_free(p->aFold);
    sqlite3_free(p);
  }
  return;
}
