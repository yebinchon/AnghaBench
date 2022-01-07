
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pLast; TYPE_2__* pFirst; } ;
typedef TYPE_1__ closure_queue ;
struct TYPE_6__ {struct TYPE_6__* pList; } ;
typedef TYPE_2__ closure_avl ;



__attribute__((used)) static void queuePush(closure_queue *pQueue, closure_avl *pNode){
  pNode->pList = 0;
  if( pQueue->pLast ){
    pQueue->pLast->pList = pNode;
  }else{
    pQueue->pFirst = pNode;
  }
  pQueue->pLast = pNode;
}
