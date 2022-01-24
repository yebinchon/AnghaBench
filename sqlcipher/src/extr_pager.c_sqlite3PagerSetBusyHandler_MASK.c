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
struct TYPE_3__ {int (* xBusyHandler ) (void*) ;int /*<<< orphan*/  fd; void* pBusyHandlerArg; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_FCNTL_BUSYHANDLER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void FUNC2(
  Pager *pPager,                       /* Pager object */
  int (*xBusyHandler)(void *),         /* Pointer to busy-handler function */
  void *pBusyHandlerArg                /* Argument to pass to xBusyHandler */
){
  void **ap;
  pPager->xBusyHandler = xBusyHandler;
  pPager->pBusyHandlerArg = pBusyHandlerArg;
  ap = (void **)&pPager->xBusyHandler;
  FUNC0( ((int(*)(void *))(ap[0]))==xBusyHandler );
  FUNC0( ap[1]==pBusyHandlerArg );
  FUNC1(pPager->fd, SQLITE_FCNTL_BUSYHANDLER, (void *)ap);
}