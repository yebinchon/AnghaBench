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
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_3__ {int /*<<< orphan*/  pEnv; struct TYPE_3__* apShm; int /*<<< orphan*/  fd; int /*<<< orphan*/  nMap; scalar_t__ pMap; } ;
typedef  TYPE_1__ PosixFile ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lsm_file *pFile){
   PosixFile *p = (PosixFile *)pFile;
   FUNC1(pFile, 0);
   if( p->pMap ) FUNC3(p->pMap, p->nMap);
   FUNC0(p->fd);
   FUNC2(p->pEnv, p->apShm);
   FUNC2(p->pEnv, p);
   return LSM_OK;
}