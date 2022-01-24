#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ DemoFile ;

/* Variables and functions */
 int SQLITE_IOERR_FSYNC ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(sqlite3_file *pFile, int flags){
  DemoFile *p = (DemoFile*)pFile;
  int rc;

  rc = FUNC0(p);
  if( rc!=SQLITE_OK ){
    return rc;
  }

  rc = FUNC1(p->fd);
  return (rc==0 ? SQLITE_OK : SQLITE_IOERR_FSYNC);
}