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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  aArr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args */
  sqlite3_value **apVal           /* Function arguments */
){
  int iCode;
  u8 aArr[32];
  if( nArg!=1 ){
    FUNC3(pCtx, 
        "wrong number of arguments to function fts5_isalnum", -1
    );
    return;
  }
  FUNC0(aArr, 0, sizeof(aArr));
  FUNC1("L*", aArr);
  FUNC1("N*", aArr);
  FUNC1("Co", aArr);
  iCode = FUNC5(apVal[0]);
  FUNC4(pCtx, aArr[FUNC2((u32)iCode)]);
}