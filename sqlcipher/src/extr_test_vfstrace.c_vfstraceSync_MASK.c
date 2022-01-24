#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zBuf ;
struct TYPE_7__ {int /*<<< orphan*/  zVfsName; } ;
typedef  TYPE_2__ vfstrace_info ;
struct TYPE_8__ {TYPE_5__* pReal; int /*<<< orphan*/  zFName; TYPE_2__* pInfo; } ;
typedef  TYPE_3__ vfstrace_file ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
struct TYPE_6__ {int (* xSync ) (TYPE_5__*,int) ;} ;

/* Variables and functions */
 int SQLITE_SYNC_DATAONLY ; 
 int SQLITE_SYNC_FULL ; 
 int SQLITE_SYNC_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,char*) ; 
 int FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,...) ; 

__attribute__((used)) static int FUNC5(sqlite3_file *pFile, int flags){
  vfstrace_file *p = (vfstrace_file *)pFile;
  vfstrace_info *pInfo = p->pInfo;
  int rc;
  int i;
  char zBuf[100];
  FUNC0(zBuf, "|0", 3);
  i = 0;
  if( flags & SQLITE_SYNC_FULL )        FUNC2(zBuf, &i, "|FULL");
  else if( flags & SQLITE_SYNC_NORMAL ) FUNC2(zBuf, &i, "|NORMAL");
  if( flags & SQLITE_SYNC_DATAONLY )    FUNC2(zBuf, &i, "|DATAONLY");
  if( flags & ~(SQLITE_SYNC_FULL|SQLITE_SYNC_DATAONLY) ){
    FUNC1(sizeof(zBuf)-i, &zBuf[i], "|0x%x", flags);
  }
  FUNC4(pInfo, "%s.xSync(%s,%s)", pInfo->zVfsName, p->zFName,
                  &zBuf[1]);
  rc = p->pReal->pMethods->xSync(p->pReal, flags);
  FUNC4(pInfo, " -> %d\n", rc);
  return rc;
}