
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pLast; TYPE_2__* pFirst; } ;
typedef TYPE_1__ closure_queue ;
struct TYPE_6__ {struct TYPE_6__* pList; } ;
typedef TYPE_2__ closure_avl ;



__attribute__((used)) static closure_avl *queuePull(closure_queue *pQueue){
  closure_avl *p = pQueue->pFirst;
  if( p ){
    pQueue->pFirst = p->pList;
    if( pQueue->pFirst==0 ) pQueue->pLast = 0;
  }
  return p;
}
