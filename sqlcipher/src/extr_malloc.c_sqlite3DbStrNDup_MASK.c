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
typedef  int u64 ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 

char *FUNC3(sqlite3 *db, const char *z, u64 n){
  char *zNew;
  FUNC0( db!=0 );
  if( z==0 ){
    return 0;
  }
  FUNC0( (n&0x7fffffff)==n );
  zNew = FUNC2(db, n+1);
  if( zNew ){
    FUNC1(zNew, z, (size_t)n);
    zNew[n] = 0;
  }
  return zNew;
}