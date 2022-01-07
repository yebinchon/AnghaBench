
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_8__ {size_t* aUp; char const* zJson; TYPE_3__* aNode; } ;
struct TYPE_10__ {size_t i; size_t eType; size_t iBegin; char* zRoot; TYPE_2__ sParse; int bRecursive; int iRowid; } ;
struct TYPE_7__ {int zJContent; int iKey; } ;
struct TYPE_9__ {int jnFlags; size_t eType; TYPE_1__ u; int n; } ;
typedef int JsonString ;
typedef TYPE_3__ JsonNode ;
typedef TYPE_4__ JsonEachCursor ;
 int JNODE_LABEL ;
 size_t JSON_ARRAY ;
 size_t JSON_OBJECT ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int assert (int) ;
 int jsonAppendChar (int *,char) ;
 int jsonAppendRaw (int *,char*,int) ;
 int jsonEachComputePath (TYPE_4__*,int *,size_t) ;
 int jsonInit (int *,int *) ;
 int jsonPrintf (int,int *,char*,int ,...) ;
 int jsonResult (int *) ;
 int jsonReturn (TYPE_3__*,int *,int ) ;
 char const** jsonType ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int jsonEachColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  JsonEachCursor *p = (JsonEachCursor*)cur;
  JsonNode *pThis = &p->sParse.aNode[p->i];
  switch( i ){
    case 132: {
      if( p->i==0 ) break;
      if( p->eType==JSON_OBJECT ){
        jsonReturn(pThis, ctx, 0);
      }else if( p->eType==JSON_ARRAY ){
        u32 iKey;
        if( p->bRecursive ){
          if( p->iRowid==0 ) break;
          iKey = p->sParse.aNode[p->sParse.aUp[p->i]].u.iKey;
        }else{
          iKey = p->iRowid;
        }
        sqlite3_result_int64(ctx, (sqlite3_int64)iKey);
      }
      break;
    }
    case 128: {
      if( pThis->jnFlags & JNODE_LABEL ) pThis++;
      jsonReturn(pThis, ctx, 0);
      break;
    }
    case 129: {
      if( pThis->jnFlags & JNODE_LABEL ) pThis++;
      sqlite3_result_text(ctx, jsonType[pThis->eType], -1, SQLITE_STATIC);
      break;
    }
    case 136: {
      if( pThis->jnFlags & JNODE_LABEL ) pThis++;
      if( pThis->eType>=JSON_ARRAY ) break;
      jsonReturn(pThis, ctx, 0);
      break;
    }
    case 134: {
      sqlite3_result_int64(ctx,
         (sqlite3_int64)p->i + ((pThis->jnFlags & JNODE_LABEL)!=0));
      break;
    }
    case 131: {
      if( p->i>p->iBegin && p->bRecursive ){
        sqlite3_result_int64(ctx, (sqlite3_int64)p->sParse.aUp[p->i]);
      }
      break;
    }
    case 135: {
      JsonString x;
      jsonInit(&x, ctx);
      if( p->bRecursive ){
        jsonEachComputePath(p, &x, p->i);
      }else{
        if( p->zRoot ){
          jsonAppendRaw(&x, p->zRoot, (int)strlen(p->zRoot));
        }else{
          jsonAppendChar(&x, '$');
        }
        if( p->eType==JSON_ARRAY ){
          jsonPrintf(30, &x, "[%d]", p->iRowid);
        }else if( p->eType==JSON_OBJECT ){
          jsonPrintf(pThis->n, &x, ".%.*s", pThis->n-2, pThis->u.zJContent+1);
        }
      }
      jsonResult(&x);
      break;
    }
    case 130: {
      if( p->bRecursive ){
        JsonString x;
        jsonInit(&x, ctx);
        jsonEachComputePath(p, &x, p->sParse.aUp[p->i]);
        jsonResult(&x);
        break;
      }


    }
    default: {
      const char *zRoot = p->zRoot;
      if( zRoot==0 ) zRoot = "$";
      sqlite3_result_text(ctx, zRoot, -1, SQLITE_STATIC);
      break;
    }
    case 133: {
      assert( i==133 );
      sqlite3_result_text(ctx, p->sParse.zJson, -1, SQLITE_STATIC);
      break;
    }
  }
  return SQLITE_OK;
}
