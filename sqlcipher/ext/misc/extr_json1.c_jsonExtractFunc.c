
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {scalar_t__ nErr; } ;
typedef int JsonString ;
typedef TYPE_1__ JsonParse ;
typedef int JsonNode ;


 int JSON_SUBTYPE ;
 int jsonAppendChar (int *,char) ;
 int jsonAppendRaw (int *,char*,int) ;
 int jsonAppendSeparator (int *) ;
 int jsonInit (int *,int *) ;
 int * jsonLookup (TYPE_1__*,char const*,int ,int *) ;
 TYPE_1__* jsonParseCached (int *,int **,int *) ;
 int jsonRenderNode (int *,int *,int ) ;
 int jsonReset (int *) ;
 int jsonResult (int *) ;
 int jsonReturn (int *,int *,int ) ;
 int sqlite3_result_subtype (int *,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void jsonExtractFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse *p;
  JsonNode *pNode;
  const char *zPath;
  JsonString jx;
  int i;

  if( argc<2 ) return;
  p = jsonParseCached(ctx, argv, ctx);
  if( p==0 ) return;
  jsonInit(&jx, ctx);
  jsonAppendChar(&jx, '[');
  for(i=1; i<argc; i++){
    zPath = (const char*)sqlite3_value_text(argv[i]);
    pNode = jsonLookup(p, zPath, 0, ctx);
    if( p->nErr ) break;
    if( argc>2 ){
      jsonAppendSeparator(&jx);
      if( pNode ){
        jsonRenderNode(pNode, &jx, 0);
      }else{
        jsonAppendRaw(&jx, "null", 4);
      }
    }else if( pNode ){
      jsonReturn(pNode, ctx, 0);
    }
  }
  if( argc>2 && i==argc ){
    jsonAppendChar(&jx, ']');
    jsonResult(&jx);
    sqlite3_result_subtype(ctx, JSON_SUBTYPE);
  }
  jsonReset(&jx);
}
