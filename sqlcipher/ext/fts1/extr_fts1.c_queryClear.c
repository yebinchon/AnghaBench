
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pTerm; } ;
struct TYPE_5__ {int nTerms; TYPE_4__* pTerms; } ;
typedef TYPE_1__ Query ;


 int free (TYPE_4__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void queryClear(Query *q){
  int i;
  for(i = 0; i < q->nTerms; ++i){
    free(q->pTerms[i].pTerm);
  }
  free(q->pTerms);
  memset(q, 0, sizeof(*q));
}
