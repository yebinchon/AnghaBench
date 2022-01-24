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
typedef  int /*<<< orphan*/  zTemp ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char FUNC1 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn;
  int nIn;
  unsigned char *zOut;
  unsigned char *zToFree = 0;
  int i;
  unsigned char zTemp[100];
  FUNC0( argc==1 );
  if( FUNC8(argv[0])==SQLITE_NULL ) return;
  zIn = (const unsigned char*)FUNC7(argv[0]);
  nIn = FUNC6(argv[0]);
  if( nIn<sizeof(zTemp)-1 ){
    zOut = zTemp;
  }else{
    zOut = zToFree = (unsigned char*)FUNC3( nIn+1 );
    if( zOut==0 ){
      FUNC4(context);
      return;
    }
  }
  for(i=0; i<nIn; i++) zOut[i] = FUNC1(zIn[i]);
  zOut[i] = 0;
  FUNC5(context, (char*)zOut, i, SQLITE_TRANSIENT);
  FUNC2(zToFree);
}