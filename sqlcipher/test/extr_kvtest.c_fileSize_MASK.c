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
typedef  int /*<<< orphan*/  x ;
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static sqlite3_int64 FUNC3(const char *zPath){
  struct stat x;
  int rc;
  FUNC1(&x, 0, sizeof(x));
  rc = FUNC2(zPath, &x);
  if( rc<0 ) return -1;
  if( !FUNC0(x.st_mode) ) return -1;
  return x.st_size;
}