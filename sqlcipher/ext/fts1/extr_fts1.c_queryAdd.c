
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nTerms; int dfltColumn; int nextColumn; scalar_t__ nextIsOr; TYPE_1__* pTerms; } ;
struct TYPE_7__ {int nTerm; int iColumn; scalar_t__ isOr; scalar_t__* pTerm; } ;
typedef TYPE_1__ QueryTerm ;
typedef TYPE_2__ Query ;


 scalar_t__* malloc (int) ;
 int memcpy (scalar_t__*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;

__attribute__((used)) static void queryAdd(Query *q, const char *pTerm, int nTerm){
  QueryTerm *t;
  ++q->nTerms;
  q->pTerms = realloc(q->pTerms, q->nTerms * sizeof(q->pTerms[0]));
  if( q->pTerms==0 ){
    q->nTerms = 0;
    return;
  }
  t = &q->pTerms[q->nTerms - 1];
  memset(t, 0, sizeof(*t));
  t->pTerm = malloc(nTerm+1);
  memcpy(t->pTerm, pTerm, nTerm);
  t->pTerm[nTerm] = 0;
  t->nTerm = nTerm;
  t->isOr = q->nextIsOr;
  q->nextIsOr = 0;
  t->iColumn = q->nextColumn;
  q->nextColumn = q->dfltColumn;
}
