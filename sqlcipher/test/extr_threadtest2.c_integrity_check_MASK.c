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
typedef  int /*<<< orphan*/  sqlite ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 int SQLITE_OK ; 
 scalar_t__ all_stop ; 
 int /*<<< orphan*/  check_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2(sqlite *db, int id){
  int rc;
  if( all_stop ) return 0;
  /* fprintf(stderr,"%d: CHECK\n", id); */
  rc = FUNC1(db, "pragma integrity_check", check_callback, 0, 0);
  if( rc!=SQLITE_OK && rc!=SQLITE_BUSY ){
    FUNC0(stderr,"%d, Integrity check returns %d\n", id, rc);
  }
  if( all_stop ){
    FUNC1(db, "pragma integrity_check", check_callback, 0, 0);
  }
  return 0;
}