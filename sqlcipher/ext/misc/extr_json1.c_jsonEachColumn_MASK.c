#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_8__ {size_t* aUp; char const* zJson; TYPE_3__* aNode; } ;
struct TYPE_10__ {size_t i; size_t eType; size_t iBegin; char* zRoot; TYPE_2__ sParse; int /*<<< orphan*/  bRecursive; int /*<<< orphan*/  iRowid; } ;
struct TYPE_7__ {int /*<<< orphan*/  zJContent; int /*<<< orphan*/  iKey; } ;
struct TYPE_9__ {int jnFlags; size_t eType; TYPE_1__ u; int /*<<< orphan*/  n; } ;
typedef  int /*<<< orphan*/  JsonString ;
typedef  TYPE_3__ JsonNode ;
typedef  TYPE_4__ JsonEachCursor ;

/* Variables and functions */
#define  JEACH_ATOM 136 
#define  JEACH_FULLKEY 135 
#define  JEACH_ID 134 
#define  JEACH_JSON 133 
#define  JEACH_KEY 132 
#define  JEACH_PARENT 131 
#define  JEACH_PATH 130 
#define  JEACH_TYPE 129 
#define  JEACH_VALUE 128 
 int JNODE_LABEL ; 
 size_t JSON_ARRAY ; 
 size_t JSON_OBJECT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const** jsonType ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(
  sqlite3_vtab_cursor *cur,   /* The cursor */
  sqlite3_context *ctx,       /* First argument to sqlite3_result_...() */
  int i                       /* Which column to return */
){
  JsonEachCursor *p = (JsonEachCursor*)cur;
  JsonNode *pThis = &p->sParse.aNode[p->i];
  switch( i ){
    case JEACH_KEY: {
      if( p->i==0 ) break;
      if( p->eType==JSON_OBJECT ){
        FUNC7(pThis, ctx, 0);
      }else if( p->eType==JSON_ARRAY ){
        u32 iKey;
        if( p->bRecursive ){
          if( p->iRowid==0 ) break;
          iKey = p->sParse.aNode[p->sParse.aUp[p->i]].u.iKey;
        }else{
          iKey = p->iRowid;
        }
        FUNC8(ctx, (sqlite3_int64)iKey);
      }
      break;
    }
    case JEACH_VALUE: {
      if( pThis->jnFlags & JNODE_LABEL ) pThis++;
      FUNC7(pThis, ctx, 0);
      break;
    }
    case JEACH_TYPE: {
      if( pThis->jnFlags & JNODE_LABEL ) pThis++;
      FUNC9(ctx, jsonType[pThis->eType], -1, SQLITE_STATIC);
      break;
    }
    case JEACH_ATOM: {
      if( pThis->jnFlags & JNODE_LABEL ) pThis++;
      if( pThis->eType>=JSON_ARRAY ) break;
      FUNC7(pThis, ctx, 0);
      break;
    }
    case JEACH_ID: {
      FUNC8(ctx, 
         (sqlite3_int64)p->i + ((pThis->jnFlags & JNODE_LABEL)!=0));
      break;
    }
    case JEACH_PARENT: {
      if( p->i>p->iBegin && p->bRecursive ){
        FUNC8(ctx, (sqlite3_int64)p->sParse.aUp[p->i]);
      }
      break;
    }
    case JEACH_FULLKEY: {
      JsonString x;
      FUNC4(&x, ctx);
      if( p->bRecursive ){
        FUNC3(p, &x, p->i);
      }else{
        if( p->zRoot ){
          FUNC2(&x, p->zRoot, (int)FUNC10(p->zRoot));
        }else{
          FUNC1(&x, '$');
        }
        if( p->eType==JSON_ARRAY ){
          FUNC5(30, &x, "[%d]", p->iRowid);
        }else if( p->eType==JSON_OBJECT ){
          FUNC5(pThis->n, &x, ".%.*s", pThis->n-2, pThis->u.zJContent+1);
        }
      }
      FUNC6(&x);
      break;
    }
    case JEACH_PATH: {
      if( p->bRecursive ){
        JsonString x;
        FUNC4(&x, ctx);
        FUNC3(p, &x, p->sParse.aUp[p->i]);
        FUNC6(&x);
        break;
      }
      /* For json_each() path and root are the same so fall through
      ** into the root case */
    }
    default: {
      const char *zRoot = p->zRoot;
      if( zRoot==0 ) zRoot = "$";
      FUNC9(ctx, zRoot, -1, SQLITE_STATIC);
      break;
    }
    case JEACH_JSON: {
      FUNC0( i==JEACH_JSON );
      FUNC9(ctx, p->sParse.zJson, -1, SQLITE_STATIC);
      break;
    }
  }
  return SQLITE_OK;
}