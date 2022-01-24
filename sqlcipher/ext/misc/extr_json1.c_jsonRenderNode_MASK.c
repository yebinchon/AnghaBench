#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_5__ {size_t iReplace; char* zJContent; size_t iAppend; TYPE_2__* pPatch; } ;
struct TYPE_6__ {int jnFlags; int eType; int n; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  JsonString ;
typedef  TYPE_2__ JsonNode ;

/* Variables and functions */
 int JNODE_APPEND ; 
 int JNODE_PATCH ; 
 int JNODE_RAW ; 
 int JNODE_REMOVE ; 
 int JNODE_REPLACE ; 
#define  JSON_ARRAY 134 
#define  JSON_FALSE 133 
#define  JSON_INT 132 
 int JSON_NULL ; 
#define  JSON_OBJECT 131 
#define  JSON_REAL 130 
#define  JSON_STRING 129 
#define  JSON_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(
  JsonNode *pNode,               /* The node to render */
  JsonString *pOut,              /* Write JSON here */
  sqlite3_value **aReplace       /* Replacement values */
){
  if( pNode->jnFlags & (JNODE_REPLACE|JNODE_PATCH) ){
    if( pNode->jnFlags & JNODE_REPLACE ){
      FUNC5(pOut, aReplace[pNode->u.iReplace]);
      return;
    }
    pNode = pNode->u.pPatch;
  }
  switch( pNode->eType ){
    default: {
      FUNC0( pNode->eType==JSON_NULL );
      FUNC2(pOut, "null", 4);
      break;
    }
    case JSON_TRUE: {
      FUNC2(pOut, "true", 4);
      break;
    }
    case JSON_FALSE: {
      FUNC2(pOut, "false", 5);
      break;
    }
    case JSON_STRING: {
      if( pNode->jnFlags & JNODE_RAW ){
        FUNC4(pOut, pNode->u.zJContent, pNode->n);
        break;
      }
      /* Fall through into the next case */
    }
    case JSON_REAL:
    case JSON_INT: {
      FUNC2(pOut, pNode->u.zJContent, pNode->n);
      break;
    }
    case JSON_ARRAY: {
      u32 j = 1;
      FUNC1(pOut, '[');
      for(;;){
        while( j<=pNode->n ){
          if( (pNode[j].jnFlags & JNODE_REMOVE)==0 ){
            FUNC3(pOut);
            FUNC7(&pNode[j], pOut, aReplace);
          }
          j += FUNC6(&pNode[j]);
        }
        if( (pNode->jnFlags & JNODE_APPEND)==0 ) break;
        pNode = &pNode[pNode->u.iAppend];
        j = 1;
      }
      FUNC1(pOut, ']');
      break;
    }
    case JSON_OBJECT: {
      u32 j = 1;
      FUNC1(pOut, '{');
      for(;;){
        while( j<=pNode->n ){
          if( (pNode[j+1].jnFlags & JNODE_REMOVE)==0 ){
            FUNC3(pOut);
            FUNC7(&pNode[j], pOut, aReplace);
            FUNC1(pOut, ':');
            FUNC7(&pNode[j+1], pOut, aReplace);
          }
          j += 1 + FUNC6(&pNode[j+1]);
        }
        if( (pNode->jnFlags & JNODE_APPEND)==0 ) break;
        pNode = &pNode[pNode->u.iAppend];
        j = 1;
      }
      FUNC1(pOut, '}');
      break;
    }
  }
}