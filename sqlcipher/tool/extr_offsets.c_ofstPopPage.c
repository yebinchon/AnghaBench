
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nStack; int * aStack; int aPage; int * aPgno; int pgno; } ;
typedef TYPE_1__ GState ;


 int sqlite3_free (int ) ;

__attribute__((used)) static void ofstPopPage(GState *p){
  if( p->nStack<=0 ) return;
  p->nStack--;
  sqlite3_free(p->aStack[p->nStack]);
  p->pgno = p->aPgno[p->nStack-1];
  p->aPage = p->aStack[p->nStack-1];
}
