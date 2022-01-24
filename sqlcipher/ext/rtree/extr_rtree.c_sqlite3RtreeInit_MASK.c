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
 scalar_t__ RTREE_COORD_INT32 ; 
 scalar_t__ RTREE_COORD_REAL32 ; 
 int SQLITE_OK ; 
 int SQLITE_UTF8 ; 
 int /*<<< orphan*/  rtreeModule ; 
 int /*<<< orphan*/  rtreecheck ; 
 int /*<<< orphan*/  rtreedepth ; 
 int /*<<< orphan*/  rtreenode ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(sqlite3 *db){
  const int utf8 = SQLITE_UTF8;
  int rc;

  rc = FUNC0(db, "rtreenode", 2, utf8, 0, rtreenode, 0, 0);
  if( rc==SQLITE_OK ){
    rc = FUNC0(db, "rtreedepth", 1, utf8, 0,rtreedepth, 0, 0);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC0(db, "rtreecheck", -1, utf8, 0,rtreecheck, 0,0);
  }
  if( rc==SQLITE_OK ){
#ifdef SQLITE_RTREE_INT_ONLY
    void *c = (void *)RTREE_COORD_INT32;
#else
    void *c = (void *)RTREE_COORD_REAL32;
#endif
    rc = FUNC1(db, "rtree", &rtreeModule, c, 0);
  }
  if( rc==SQLITE_OK ){
    void *c = (void *)RTREE_COORD_INT32;
    rc = FUNC1(db, "rtree_i32", &rtreeModule, c, 0);
  }
#ifdef SQLITE_ENABLE_GEOPOLY
  if( rc==SQLITE_OK ){
    rc = sqlite3_geopoly_init(db);
  }
#endif

  return rc;
}