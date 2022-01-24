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
typedef  scalar_t__ uLongf ;
typedef  scalar_t__ uLong ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  uLong nData;
  uLongf sz;

  FUNC0( argc==2 );
  sz = FUNC8(argv[1]);

  if( sz<=0 || sz==(nData = FUNC7(argv[0])) ){
    FUNC5(context, argv[0]);
  }else{
    const Bytef *pData= FUNC6(argv[0]);
    Bytef *pOut = FUNC2(sz);
    if( Z_OK!=FUNC9(pOut, &sz, pData, nData) ){
      FUNC4(context, "error in uncompress()", -1);
    }else{
      FUNC3(context, pOut, sz, SQLITE_TRANSIENT);
    }
    FUNC1(pOut);
  }
}