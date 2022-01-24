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

/* Variables and functions */
 int PATH_DB ; 
 int PATH_DIR ; 
 int PATH_NEXIST ; 
 int PATH_OTHER ; 
 int PATH_TREE ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC6(const char *zPath){
  struct stat x;
  int rc;
  if( FUNC1(zPath,R_OK) ) return PATH_NEXIST;
  FUNC2(&x, 0, sizeof(x));
  rc = FUNC5(zPath, &x);
  if( rc<0 ) return PATH_OTHER;
  if( FUNC0(x.st_mode) ){
    char *zLayer1 = FUNC4("%s/00", zPath);
    FUNC2(&x, 0, sizeof(x));
    rc = FUNC5(zLayer1, &x);
    FUNC3(zLayer1);
    if( rc<0 ) return PATH_DIR;
    if( FUNC0(x.st_mode) ) return PATH_TREE;
    return PATH_DIR;
  }
  if( (x.st_size%512)==0 ) return PATH_DB;
  return PATH_OTHER;
}