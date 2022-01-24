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
typedef  int /*<<< orphan*/  zBuf ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,unsigned char const) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(sqlite3_context *p, int argc, sqlite3_value **argv){
  const unsigned char *z;
  int i;
  char zBuf[200];
  z = FUNC2(argv[0]);
  for(i=0; i<sizeof(zBuf)/2 - 2 && z[i]; i++){
    FUNC1(sizeof(zBuf)-i*2, &zBuf[i*2], "%02x", z[i]);
  }
  zBuf[i*2] = 0;
  FUNC0(p, (char*)zBuf, -1, SQLITE_TRANSIENT);
}