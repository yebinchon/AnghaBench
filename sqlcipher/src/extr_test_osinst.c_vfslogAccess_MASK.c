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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  scalar_t__ sqlite3_uint64 ;
struct TYPE_3__ {int (* xAccess ) (TYPE_1__*,char const*,int,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OS_ACCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(
  sqlite3_vfs *pVfs, 
  const char *zPath, 
  int flags, 
  int *pResOut
){
  int rc;
  sqlite3_uint64 t;
  t = FUNC4();
  rc = FUNC0(pVfs)->xAccess(FUNC0(pVfs), zPath, flags, pResOut);
  t = FUNC4() - t;
  FUNC2(pVfs, OS_ACCESS, 0, t, rc, flags, *pResOut);
  FUNC3(pVfs, zPath);
  return rc;
}