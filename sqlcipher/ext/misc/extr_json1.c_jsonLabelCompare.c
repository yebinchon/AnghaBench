
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ zJContent; } ;
struct TYPE_5__ {int jnFlags; scalar_t__ n; TYPE_1__ u; } ;
typedef TYPE_2__ JsonNode ;


 int JNODE_RAW ;
 scalar_t__ strncmp (scalar_t__,char const*,scalar_t__) ;

__attribute__((used)) static int jsonLabelCompare(JsonNode *pNode, const char *zKey, u32 nKey){
  if( pNode->jnFlags & JNODE_RAW ){
    if( pNode->n!=nKey ) return 0;
    return strncmp(pNode->u.zJContent, zKey, nKey)==0;
  }else{
    if( pNode->n!=nKey+2 ) return 0;
    return strncmp(pNode->u.zJContent+1, zKey, nKey)==0;
  }
}
