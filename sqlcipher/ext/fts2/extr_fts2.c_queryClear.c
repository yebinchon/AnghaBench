
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pTerm; } ;
struct TYPE_5__ {int nTerms; TYPE_2__* pTerms; } ;
typedef TYPE_1__ Query ;


 int CLEAR (TYPE_1__*) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void queryClear(Query *q){
  int i;
  for(i = 0; i < q->nTerms; ++i){
    sqlite3_free(q->pTerms[i].pTerm);
  }
  sqlite3_free(q->pTerms);
  CLEAR(q);
}
