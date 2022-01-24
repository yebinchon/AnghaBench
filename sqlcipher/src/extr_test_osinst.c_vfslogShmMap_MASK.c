#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_5__ {int /*<<< orphan*/  iFileId; int /*<<< orphan*/  pVfslog; TYPE_3__* pReal; } ;
typedef  TYPE_2__ VfslogFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xShmMap ) (TYPE_3__*,int,int,int,void volatile**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OS_SHMMAP ; 
 int FUNC0 (TYPE_3__*,int,int,int,void volatile**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(
  sqlite3_file *pFile, 
  int iRegion, 
  int szRegion, 
  int isWrite, 
  volatile void **pp
){
  int rc;
  sqlite3_uint64 t;
  VfslogFile *p = (VfslogFile *)pFile;
  t = FUNC2();
  rc = p->pReal->pMethods->xShmMap(p->pReal, iRegion, szRegion, isWrite, pp);
  t = FUNC2() - t;
  FUNC1(p->pVfslog, OS_SHMMAP, p->iFileId, t, rc, 0, 0);
  return rc;
}