
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int JsonString ;
typedef int JsonNode ;


 int JSON_SUBTYPE ;
 int jsonInit (int *,int *) ;
 int jsonRenderNode (int *,int *,int **) ;
 int jsonResult (int *) ;
 int sqlite3_result_subtype (int *,int ) ;

__attribute__((used)) static void jsonReturnJson(
  JsonNode *pNode,
  sqlite3_context *pCtx,
  sqlite3_value **aReplace
){
  JsonString s;
  jsonInit(&s, pCtx);
  jsonRenderNode(pNode, &s, aReplace);
  jsonResult(&s);
  sqlite3_result_subtype(pCtx, JSON_SUBTYPE);
}
