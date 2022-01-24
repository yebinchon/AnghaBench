#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zVfsName; } ;
typedef  TYPE_2__ vfstrace_info ;
struct TYPE_9__ {TYPE_6__* pReal; int /*<<< orphan*/  zFName; TYPE_2__* pInfo; } ;
typedef  TYPE_3__ vfstrace_file ;
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_10__ {TYPE_1__* pMethods; } ;
struct TYPE_7__ {int (* xFileSize ) (TYPE_6__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC3(sqlite3_file *pFile, sqlite_int64 *pSize){
  vfstrace_file *p = (vfstrace_file *)pFile;
  vfstrace_info *pInfo = p->pInfo;
  int rc;
  FUNC2(pInfo, "%s.xFileSize(%s)", pInfo->zVfsName, p->zFName);
  rc = p->pReal->pMethods->xFileSize(p->pReal, pSize);
  FUNC1(pInfo, " -> %s,", rc);
  FUNC2(pInfo, " size=%lld\n", *pSize);
  return rc;
}