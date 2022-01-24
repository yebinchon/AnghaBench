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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  const u8 *zBlob;
  int nBlob;
  int iOff = 0;
  u32 iRet = 0;

  if( nArg!=1 && nArg!=2 ){
    FUNC1(
        pCtx, "wrong number of arguments to function sqlite_readint32()", -1
    );
    return;
  }
  if( nArg==2 ){
    iOff = FUNC5(apArg[1]);
  }

  zBlob = FUNC3(apArg[0]);
  nBlob = FUNC4(apArg[0]);

  if( nBlob>=(iOff+4) ){
    iRet = FUNC0(&zBlob[iOff]);
  }

  FUNC2(pCtx, (sqlite3_int64)iRet);
}