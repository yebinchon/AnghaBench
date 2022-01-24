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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  free_test_auxdata ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **argv
){
  int i;
  char *zRet = FUNC9(pCtx, nArg*2);
  if( !zRet ) return;
  FUNC2(zRet, 0, nArg*2);
  for(i=0; i<nArg; i++){
    char const *z = (char*)FUNC6(argv[i]);
    if( z ){
      int n;
      char *zAux = FUNC3(pCtx, i);
      if( zAux ){
        zRet[i*2] = '1';
        FUNC0( FUNC7(zAux,z)==0 );
      }else {
        zRet[i*2] = '0';
      }
      n = (int)FUNC8(z) + 1;
      zAux = FUNC9(pCtx, n);
      if( zAux ){
        FUNC1(zAux, z, n);
        FUNC5(pCtx, i, zAux, free_test_auxdata);
      }
      zRet[i*2+1] = ' ';
    }
  }
  FUNC4(pCtx, zRet, 2*nArg-1, free_test_auxdata);
}