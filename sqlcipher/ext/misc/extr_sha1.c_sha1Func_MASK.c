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
typedef  int /*<<< orphan*/  SHA1Context ;

/* Variables and functions */
 int SQLITE_BLOB ; 
 int SQLITE_NULL ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  SHA1Context cx;
  int eType = FUNC8(argv[0]);
  int nByte = FUNC6(argv[0]);
  char zOut[44];

  FUNC0( argc==1 );
  if( eType==SQLITE_NULL ) return;
  FUNC2(&cx);
  if( eType==SQLITE_BLOB ){
    FUNC3(&cx, FUNC5(argv[0]), nByte);
  }else{
    FUNC3(&cx, FUNC7(argv[0]), nByte);
  }
  FUNC1(&cx, zOut);
  FUNC4(context, zOut, 40, SQLITE_TRANSIENT);
}