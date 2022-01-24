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
typedef  scalar_t__ i64 ;
struct TYPE_3__ {int /*<<< orphan*/  zWalName; int /*<<< orphan*/  pWalFd; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Wal *pWal, i64 nMax){
  i64 sz;
  int rx;
  FUNC0();
  rx = FUNC2(pWal->pWalFd, &sz);
  if( rx==SQLITE_OK && (sz > nMax ) ){
    rx = FUNC3(pWal->pWalFd, nMax);
  }
  FUNC1();
  if( rx ){
    FUNC4(rx, "cannot limit WAL size: %s", pWal->zWalName);
  }
}