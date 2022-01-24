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
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC2 (char const) ; 

char *FUNC3(sqlite3 *db, const char *zStart, const char *zEnd){
  int n;
  while( FUNC2(zStart[0]) ) zStart++;
  n = (int)(zEnd - zStart);
  while( FUNC0(n>0) && FUNC2(zStart[n-1]) ) n--;
  return FUNC1(db, zStart, n);
}