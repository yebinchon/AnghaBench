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
typedef  int /*<<< orphan*/  sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  sqlite3rbu *p = FUNC4(pCtx);
  const char *zIn;
  FUNC0( argc==1 || argc==2 );

  zIn = (const char*)FUNC6(argv[0]);
  if( zIn ){
    if( FUNC2(p) ){
      if( argc==1 || 0==FUNC5(argv[1]) ){
        FUNC3(pCtx, zIn, -1, SQLITE_STATIC);
      }
    }else{
      if( FUNC7(zIn)>4 && FUNC1("data", zIn, 4)==0 ){
        int i;
        for(i=4; zIn[i]>='0' && zIn[i]<='9'; i++);
        if( zIn[i]=='_' && zIn[i+1] ){
          FUNC3(pCtx, &zIn[i+1], -1, SQLITE_STATIC);
        }
      }
    }
  }
}