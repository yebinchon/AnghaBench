#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {int bErr; int bStatic; char* zBuf; scalar_t__ nUsed; } ;
typedef  TYPE_1__ JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SUBTYPE ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(sqlite3_context *ctx, int isFinal){
  JsonString *pStr;
  pStr = (JsonString*)FUNC2(ctx, 0);
  if( pStr ){
    FUNC1(pStr, '}');
    if( pStr->bErr ){
      if( pStr->bErr==1 ) FUNC3(ctx);
      FUNC0( pStr->bStatic );
    }else if( isFinal ){
      FUNC5(ctx, pStr->zBuf, (int)pStr->nUsed,
                          pStr->bStatic ? SQLITE_TRANSIENT : sqlite3_free);
      pStr->bStatic = 1;
    }else{
      FUNC5(ctx, pStr->zBuf, (int)pStr->nUsed, SQLITE_TRANSIENT);
      pStr->nUsed--;
    }
  }else{
    FUNC5(ctx, "{}", 2, SQLITE_STATIC);
  }
  FUNC4(ctx, JSON_SUBTYPE);
}