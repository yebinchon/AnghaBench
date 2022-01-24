#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_6__ {scalar_t__ zBuf; int /*<<< orphan*/ * pCtx; } ;
typedef  TYPE_1__ JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonString *pStr;
  const char *z;
  u32 n;
  FUNC0(argc);
  pStr = (JsonString*)FUNC5(ctx, sizeof(*pStr));
  if( pStr ){
    if( pStr->zBuf==0 ){
      FUNC4(pStr, ctx);
      FUNC1(pStr, '{');
    }else{
      FUNC1(pStr, ',');
      pStr->pCtx = ctx;
    }
    z = (const char*)FUNC7(argv[0]);
    n = (u32)FUNC6(argv[0]);
    FUNC2(pStr, z, n);
    FUNC1(pStr, ':');
    FUNC3(pStr, argv[1]);
  }
}