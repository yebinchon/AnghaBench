
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pRule; } ;
typedef TYPE_1__ amatch_vtab ;
struct TYPE_6__ {struct TYPE_6__* pNext; } ;
typedef TYPE_2__ amatch_rule ;


 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void amatchFreeRules(amatch_vtab *p){
  while( p->pRule ){
    amatch_rule *pRule = p->pRule;
    p->pRule = pRule->pNext;
    sqlite3_free(pRule);
  }
  p->pRule = 0;
}
