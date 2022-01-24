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
struct TYPE_5__ {int /*<<< orphan*/  (* xDlClose ) (TYPE_1__*,void*) ;} ;
typedef  TYPE_1__ sqlite3_vfs ;
struct TYPE_6__ {TYPE_1__* pParent; } ;
typedef  TYPE_2__ fs_vfs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 

__attribute__((used)) static void FUNC1(sqlite3_vfs *pVfs, void *pHandle){
  sqlite3_vfs *pParent = ((fs_vfs_t *)pVfs)->pParent;
  pParent->xDlClose(pParent, pHandle);
}