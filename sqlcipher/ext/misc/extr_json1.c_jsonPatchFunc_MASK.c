#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_5__ {scalar_t__ oom; int /*<<< orphan*/  aNode; } ;
typedef  TYPE_1__ JsonParse ;
typedef  int /*<<< orphan*/  JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse x;     /* The JSON that is being patched */
  JsonParse y;     /* The patch */
  JsonNode *pResult;   /* The result of the merge */

  FUNC0(argc);
  if( FUNC3(&x, ctx, (const char*)FUNC7(argv[0])) ) return;
  if( FUNC3(&y, ctx, (const char*)FUNC7(argv[1])) ){
    FUNC4(&x);
    return;
  }
  pResult = FUNC2(&x, 0, y.aNode);
  FUNC1( pResult!=0 || x.oom );
  if( pResult ){
    FUNC5(pResult, ctx, 0);
  }else{
    FUNC6(ctx);
  }
  FUNC4(&x);
  FUNC4(&y);
}