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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(sqlite3 *db, const char *z){
  char *zNew;
  size_t n;
  if( z==0 ){
    return 0;
  }
  n = FUNC2(z) + 1;
  zNew = FUNC1(db, n);
  if( zNew ){
    FUNC0(zNew, z, n);
  }
  return zNew;
}