
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; int * z; } ;
typedef TYPE_1__ Token ;
struct TYPE_6__ {TYPE_1__ sArg; } ;
typedef TYPE_2__ Parse ;


 int assert (int) ;

void sqlite3VtabArgExtend(Parse *pParse, Token *p){
  Token *pArg = &pParse->sArg;
  if( pArg->z==0 ){
    pArg->z = p->z;
    pArg->n = p->n;
  }else{
    assert(pArg->z <= p->z);
    pArg->n = (int)(&p->z[p->n] - pArg->z);
  }
}
