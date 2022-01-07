
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nNode; scalar_t__ oom; int * aNode; } ;
typedef TYPE_1__ JsonParse ;
typedef int JsonNode ;


 int JSON_ARRAY ;
 int JSON_NULL ;
 int JSON_OBJECT ;
 int * jsonLookupStep (TYPE_1__*,int,char const*,int*,char const**) ;
 int jsonParseAddNode (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static JsonNode *jsonLookupAppend(
  JsonParse *pParse,
  const char *zPath,
  int *pApnd,
  const char **pzErr
){
  *pApnd = 1;
  if( zPath[0]==0 ){
    jsonParseAddNode(pParse, JSON_NULL, 0, 0);
    return pParse->oom ? 0 : &pParse->aNode[pParse->nNode-1];
  }
  if( zPath[0]=='.' ){
    jsonParseAddNode(pParse, JSON_OBJECT, 0, 0);
  }else if( strncmp(zPath,"[0]",3)==0 ){
    jsonParseAddNode(pParse, JSON_ARRAY, 0, 0);
  }else{
    return 0;
  }
  if( pParse->oom ) return 0;
  return jsonLookupStep(pParse, pParse->nNode-1, zPath, pApnd, pzErr);
}
