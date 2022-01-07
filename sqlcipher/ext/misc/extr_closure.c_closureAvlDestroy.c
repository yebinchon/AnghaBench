
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pAfter; struct TYPE_5__* pBefore; } ;
typedef TYPE_1__ closure_avl ;



__attribute__((used)) static void closureAvlDestroy(closure_avl *p, void (*xDestroy)(closure_avl*)){
  if( p ){
    closureAvlDestroy(p->pBefore, xDestroy);
    closureAvlDestroy(p->pAfter, xDestroy);
    xDestroy(p);
  }
}
