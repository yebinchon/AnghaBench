
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_7__ {size_t eType; } ;
struct TYPE_6__ {TYPE_2__* aNode; } ;
typedef TYPE_1__ JsonParse ;
typedef TYPE_2__ JsonNode ;


 int SQLITE_STATIC ;
 TYPE_2__* jsonLookup (TYPE_1__*,char const*,int ,int *) ;
 TYPE_1__* jsonParseCached (int *,int **,int *) ;
 int * jsonType ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void jsonTypeFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse *p;
  const char *zPath;
  JsonNode *pNode;

  p = jsonParseCached(ctx, argv, ctx);
  if( p==0 ) return;
  if( argc==2 ){
    zPath = (const char*)sqlite3_value_text(argv[1]);
    pNode = jsonLookup(p, zPath, 0, ctx);
  }else{
    pNode = p->aNode;
  }
  if( pNode ){
    sqlite3_result_text(ctx, jsonType[pNode->eType], -1, SQLITE_STATIC);
  }
}
