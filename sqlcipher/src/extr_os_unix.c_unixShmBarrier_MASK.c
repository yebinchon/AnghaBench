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
typedef  int /*<<< orphan*/  unixFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef  TYPE_2__ sqlite3_file ;
struct TYPE_5__ {scalar_t__ xLock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ nolockLock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(
  sqlite3_file *fd                /* Database file holding the shared memory */
){
  FUNC0(fd);
  FUNC2();         /* compiler-defined memory barrier */
  FUNC1( fd->pMethods->xLock==nolockLock 
       || FUNC4((unixFile*)fd) 
  );
  FUNC3();               /* Also mutex, for redundancy */
  FUNC5();
}