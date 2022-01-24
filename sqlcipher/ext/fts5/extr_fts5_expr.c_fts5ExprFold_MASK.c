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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *pCtx,          /* Function call context */
  int nArg,                       /* Number of args */
  sqlite3_value **apVal           /* Function arguments */
){
  if( nArg!=1 && nArg!=2 ){
    FUNC1(pCtx, 
        "wrong number of arguments to function fts5_fold", -1
    );
  }else{
    int iCode;
    int bRemoveDiacritics = 0;
    iCode = FUNC3(apVal[0]);
    if( nArg==2 ) bRemoveDiacritics = FUNC3(apVal[1]);
    FUNC2(pCtx, FUNC0(iCode, bRemoveDiacritics));
  }
}