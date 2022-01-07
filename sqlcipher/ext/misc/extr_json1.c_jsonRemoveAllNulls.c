
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eType; int n; int jnFlags; } ;
typedef TYPE_1__ JsonNode ;


 int JNODE_REMOVE ;


 int assert (int) ;
 scalar_t__ jsonNodeSize (TYPE_1__*) ;

__attribute__((used)) static void jsonRemoveAllNulls(JsonNode *pNode){
  int i, n;
  assert( pNode->eType==128 );
  n = pNode->n;
  for(i=2; i<=n; i += jsonNodeSize(&pNode[i])+1){
    switch( pNode[i].eType ){
      case 129:
        pNode[i].jnFlags |= JNODE_REMOVE;
        break;
      case 128:
        jsonRemoveAllNulls(&pNode[i]);
        break;
    }
  }
}
