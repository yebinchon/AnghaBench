
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nTerms; TYPE_1__* pTerm; } ;
struct TYPE_6__ {int is_phrase; char const* zTerm; } ;
typedef TYPE_1__ QueryTerm ;
typedef TYPE_2__ Query ;


 TYPE_1__* realloc (TYPE_1__*,int) ;

__attribute__((used)) static void query_add(Query *q, int is_phrase, const char *zTerm){
  QueryTerm *t;
  ++q->nTerms;
  q->pTerm = realloc(q->pTerm, q->nTerms * sizeof(q->pTerm[0]));
  t = &q->pTerm[q->nTerms - 1];
  t->is_phrase = is_phrase;
  t->zTerm = zTerm;
}
