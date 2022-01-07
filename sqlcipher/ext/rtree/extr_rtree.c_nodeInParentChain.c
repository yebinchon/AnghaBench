
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pParent; } ;
typedef TYPE_1__ RtreeNode ;



__attribute__((used)) static int nodeInParentChain(const RtreeNode *pNode, const RtreeNode *pParent){
  do{
    if( pNode==pParent ) return 1;
    pParent = pParent->pParent;
  }while( pParent );
  return 0;
}
