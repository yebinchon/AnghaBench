#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ xOpen; } ;
typedef  TYPE_1__ sqlite3_vfs ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ rbu_vfs ;

/* Variables and functions */
 scalar_t__ rbuVfsOpen ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(const char *zName){
  sqlite3_vfs *pVfs = FUNC2(zName);
  if( pVfs && pVfs->xOpen==rbuVfsOpen ){
    FUNC1(((rbu_vfs*)pVfs)->mutex);
    FUNC3(pVfs);
    FUNC0(pVfs);
  }
}