#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zVfsName; TYPE_2__* pRootVfs; } ;
typedef  TYPE_1__ vfstrace_info ;
struct TYPE_8__ {int (* xDelete ) (TYPE_2__*,char const*,int) ;scalar_t__ pAppData; } ;
typedef  TYPE_2__ sqlite3_vfs ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC3(sqlite3_vfs *pVfs, const char *zPath, int dirSync){
  vfstrace_info *pInfo = (vfstrace_info*)pVfs->pAppData;
  sqlite3_vfs *pRoot = pInfo->pRootVfs;
  int rc;
  FUNC2(pInfo, "%s.xDelete(\"%s\",%d)",
                  pInfo->zVfsName, zPath, dirSync);
  rc = pRoot->xDelete(pRoot, zPath, dirSync);
  FUNC1(pInfo, " -> %s\n", rc);
  return rc;
}