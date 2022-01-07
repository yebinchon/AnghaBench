
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_11__ {size_t iReplace; } ;
struct TYPE_14__ {int jnFlags; TYPE_2__ u; } ;
struct TYPE_10__ {int iReplace; } ;
struct TYPE_13__ {TYPE_1__ u; int jnFlags; } ;
struct TYPE_12__ {TYPE_5__* aNode; scalar_t__ nErr; scalar_t__ oom; int nNode; } ;
typedef TYPE_3__ JsonParse ;
typedef TYPE_4__ JsonNode ;


 int JNODE_REPLACE ;
 int assert (int ) ;
 TYPE_4__* jsonLookup (TYPE_3__*,char const*,int*,int *) ;
 scalar_t__ jsonParse (TYPE_3__*,int *,char const*) ;
 int jsonParseReset (TYPE_3__*) ;
 int jsonReturnJson (TYPE_5__*,int *,int **) ;
 int jsonWrongNumArgs (int *,char*) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_value (int *,int *) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void jsonSetFunc(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse x;
  JsonNode *pNode;
  const char *zPath;
  u32 i;
  int bApnd;
  int bIsSet = *(int*)sqlite3_user_data(ctx);

  if( argc<1 ) return;
  if( (argc&1)==0 ) {
    jsonWrongNumArgs(ctx, bIsSet ? "set" : "insert");
    return;
  }
  if( jsonParse(&x, ctx, (const char*)sqlite3_value_text(argv[0])) ) return;
  assert( x.nNode );
  for(i=1; i<(u32)argc; i+=2){
    zPath = (const char*)sqlite3_value_text(argv[i]);
    bApnd = 0;
    pNode = jsonLookup(&x, zPath, &bApnd, ctx);
    if( x.oom ){
      sqlite3_result_error_nomem(ctx);
      goto jsonSetDone;
    }else if( x.nErr ){
      goto jsonSetDone;
    }else if( pNode && (bApnd || bIsSet) ){
      pNode->jnFlags |= (u8)JNODE_REPLACE;
      pNode->u.iReplace = i + 1;
    }
  }
  if( x.aNode[0].jnFlags & JNODE_REPLACE ){
    sqlite3_result_value(ctx, argv[x.aNode[0].u.iReplace]);
  }else{
    jsonReturnJson(x.aNode, ctx, argv);
  }
jsonSetDone:
  jsonParseReset(&x);
}
