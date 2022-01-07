
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_10__ {int jnFlags; } ;
struct TYPE_9__ {int jnFlags; } ;
struct TYPE_8__ {TYPE_3__* aNode; scalar_t__ nErr; int nNode; } ;
typedef TYPE_1__ JsonParse ;
typedef TYPE_2__ JsonNode ;


 int JNODE_REMOVE ;
 int assert (int ) ;
 TYPE_2__* jsonLookup (TYPE_1__*,char const*,int ,int *) ;
 scalar_t__ jsonParse (TYPE_1__*,int *,char const*) ;
 int jsonParseReset (TYPE_1__*) ;
 int jsonReturnJson (TYPE_3__*,int *,int ) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void jsonRemoveFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse x;
  JsonNode *pNode;
  const char *zPath;
  u32 i;

  if( argc<1 ) return;
  if( jsonParse(&x, ctx, (const char*)sqlite3_value_text(argv[0])) ) return;
  assert( x.nNode );
  for(i=1; i<(u32)argc; i++){
    zPath = (const char*)sqlite3_value_text(argv[i]);
    if( zPath==0 ) goto remove_done;
    pNode = jsonLookup(&x, zPath, 0, ctx);
    if( x.nErr ) goto remove_done;
    if( pNode ) pNode->jnFlags |= JNODE_REMOVE;
  }
  if( (x.aNode[0].jnFlags & JNODE_REMOVE)==0 ){
    jsonReturnJson(x.aNode, ctx, 0);
  }
remove_done:
  jsonParseReset(&x);
}
