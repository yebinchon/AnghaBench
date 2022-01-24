#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  sqlite3_free ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *pCtx,   /* Function context */
  int nArg,                /* Number of function arguments */
  sqlite3_value **argv     /* Values for all function arguments */
){
  int *pCounter = (int*)FUNC0(pCtx, 0);
  if( pCounter==0 ){
    pCounter = FUNC1( sizeof(*pCounter) );
    if( pCounter==0 ){
      FUNC2(pCtx);
      return;
    }
    *pCounter = FUNC5(argv[0]);
    FUNC4(pCtx, 0, pCounter, sqlite3_free);
  }else{
    ++*pCounter;
  }
  FUNC3(pCtx, *pCounter);
}