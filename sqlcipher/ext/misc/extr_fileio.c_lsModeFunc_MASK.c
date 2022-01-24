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
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i;
  int iMode = FUNC4(argv[0]);
  char z[16];
  (void)argc;
  if( FUNC1(iMode) ){
    z[0] = 'l';
  }else if( FUNC2(iMode) ){
    z[0] = '-';
  }else if( FUNC0(iMode) ){
    z[0] = 'd';
  }else{
    z[0] = '?';
  }
  for(i=0; i<3; i++){
    int m = (iMode >> ((2-i)*3));
    char *a = &z[1 + i*3];
    a[0] = (m & 0x4) ? 'r' : '-';
    a[1] = (m & 0x2) ? 'w' : '-';
    a[2] = (m & 0x1) ? 'x' : '-';
  }
  z[10] = '\0';
  FUNC3(context, z, -1, SQLITE_TRANSIENT);
}