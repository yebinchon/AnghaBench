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
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  destructor ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  test_destructor_count_var ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **argv
){
  char *zVal;
  int len;
  
  test_destructor_count_var++;
  FUNC0( nArg==1 );
  if( FUNC5(argv[0])==SQLITE_NULL ) return;
  len = FUNC3(argv[0]); 
  zVal = FUNC6(pCtx, len+3);
  if( !zVal ){
    return;
  }
  zVal[len+1] = 0;
  zVal[len+2] = 0;
  zVal++;
  FUNC1(zVal, FUNC4(argv[0]), len);
  FUNC2(pCtx, zVal, -1, destructor);
}