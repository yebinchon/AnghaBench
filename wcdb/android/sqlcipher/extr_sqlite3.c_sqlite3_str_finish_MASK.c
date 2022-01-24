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
typedef  int /*<<< orphan*/  sqlite3_str ;

/* Variables and functions */
 int /*<<< orphan*/  sqlite3OomStr ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

char *FUNC2(sqlite3_str *p){
  char *z;
  if( p!=0 && p!=&sqlite3OomStr ){
    z = FUNC0(p);
    FUNC1(p);
  }else{
    z = 0;
  }
  return z;
}