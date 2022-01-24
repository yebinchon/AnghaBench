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
typedef  int /*<<< orphan*/  uLongf ;
typedef  int /*<<< orphan*/  uLong ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  FUNC0( argc==1 );
  if( FUNC11(argv[0])==SQLITE_BLOB ){
    const Bytef *pData = FUNC9(argv[0]);
    uLong nData = FUNC10(argv[0]);
    uLongf nOut = FUNC2(nData);
    Bytef *pOut;

    pOut = (Bytef*)FUNC4(nOut);
    if( pOut==0 ){
      FUNC7(context);
      return;
    }else{
      if( Z_OK!=FUNC1(pOut, &nOut, pData, nData) ){
        FUNC6(context, "error in compress()", -1);
      }else if( nOut<nData ){
        FUNC5(context, pOut, nOut, SQLITE_TRANSIENT);
      }else{
        FUNC8(context, argv[0]);
      }
      FUNC3(pOut);
    }
  }else{
    FUNC8(context, argv[0]);
  }
}