
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
typedef int sqlite3_value ;
struct TYPE_5__ {size_t iReplace; char* zJContent; size_t iAppend; TYPE_2__* pPatch; } ;
struct TYPE_6__ {int jnFlags; int eType; int n; TYPE_1__ u; } ;
typedef int JsonString ;
typedef TYPE_2__ JsonNode ;


 int JNODE_APPEND ;
 int JNODE_PATCH ;
 int JNODE_RAW ;
 int JNODE_REMOVE ;
 int JNODE_REPLACE ;



 int JSON_NULL ;




 int assert (int) ;
 int jsonAppendChar (int *,char) ;
 int jsonAppendRaw (int *,char*,int) ;
 int jsonAppendSeparator (int *) ;
 int jsonAppendString (int *,char*,int) ;
 int jsonAppendValue (int *,int *) ;
 size_t jsonNodeSize (TYPE_2__*) ;

__attribute__((used)) static void jsonRenderNode(
  JsonNode *pNode,
  JsonString *pOut,
  sqlite3_value **aReplace
){
  if( pNode->jnFlags & (JNODE_REPLACE|JNODE_PATCH) ){
    if( pNode->jnFlags & JNODE_REPLACE ){
      jsonAppendValue(pOut, aReplace[pNode->u.iReplace]);
      return;
    }
    pNode = pNode->u.pPatch;
  }
  switch( pNode->eType ){
    default: {
      assert( pNode->eType==JSON_NULL );
      jsonAppendRaw(pOut, "null", 4);
      break;
    }
    case 128: {
      jsonAppendRaw(pOut, "true", 4);
      break;
    }
    case 133: {
      jsonAppendRaw(pOut, "false", 5);
      break;
    }
    case 129: {
      if( pNode->jnFlags & JNODE_RAW ){
        jsonAppendString(pOut, pNode->u.zJContent, pNode->n);
        break;
      }

    }
    case 130:
    case 132: {
      jsonAppendRaw(pOut, pNode->u.zJContent, pNode->n);
      break;
    }
    case 134: {
      u32 j = 1;
      jsonAppendChar(pOut, '[');
      for(;;){
        while( j<=pNode->n ){
          if( (pNode[j].jnFlags & JNODE_REMOVE)==0 ){
            jsonAppendSeparator(pOut);
            jsonRenderNode(&pNode[j], pOut, aReplace);
          }
          j += jsonNodeSize(&pNode[j]);
        }
        if( (pNode->jnFlags & JNODE_APPEND)==0 ) break;
        pNode = &pNode[pNode->u.iAppend];
        j = 1;
      }
      jsonAppendChar(pOut, ']');
      break;
    }
    case 131: {
      u32 j = 1;
      jsonAppendChar(pOut, '{');
      for(;;){
        while( j<=pNode->n ){
          if( (pNode[j+1].jnFlags & JNODE_REMOVE)==0 ){
            jsonAppendSeparator(pOut);
            jsonRenderNode(&pNode[j], pOut, aReplace);
            jsonAppendChar(pOut, ':');
            jsonRenderNode(&pNode[j+1], pOut, aReplace);
          }
          j += 1 + jsonNodeSize(&pNode[j+1]);
        }
        if( (pNode->jnFlags & JNODE_APPEND)==0 ) break;
        pNode = &pNode[pNode->u.iAppend];
        j = 1;
      }
      jsonAppendChar(pOut, '}');
      break;
    }
  }
}
