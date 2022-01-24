#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mxPathname; } ;
typedef  TYPE_1__ sqlite3_vfs ;
struct TYPE_6__ {void* pAppData; int /*<<< orphan*/  mxPathname; } ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ async_vfs ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int FUNC3 (TYPE_2__*,int) ; 

int FUNC4(const char *zParent, int isDefault){
  int rc = SQLITE_OK;
  if( async_vfs.pAppData==0 ){
    sqlite3_vfs *pParent = FUNC2(zParent);
    if( !pParent || FUNC0() ){
      rc = SQLITE_ERROR;
    }else if( SQLITE_OK!=(rc = FUNC3(&async_vfs, isDefault)) ){
      FUNC1();
    }else{
      async_vfs.pAppData = (void *)pParent;
      async_vfs.mxPathname = ((sqlite3_vfs *)async_vfs.pAppData)->mxPathname;
    }
  }
  return rc;
}