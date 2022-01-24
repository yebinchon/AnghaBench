#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int iMaxTid; TYPE_2__* pThread; } ;
typedef  TYPE_1__ Threadset ;
struct TYPE_10__ {int iTid; char* (* xProc ) (int,void*) ;struct TYPE_10__* pNext; int /*<<< orphan*/  tid; void* pArg; } ;
typedef  TYPE_2__ Thread ;
struct TYPE_11__ {scalar_t__ rc; } ;
typedef  TYPE_3__ Error ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  launch_thread_main ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC5(
  Error *pErr,                    /* IN/OUT: Error code */
  Threadset *pThreads,            /* Thread set */
  char *(*xProc)(int, void*),     /* Proc to run */
  void *pArg                      /* Argument passed to thread proc */
){
  if( pErr->rc==SQLITE_OK ){
    int iTid = ++pThreads->iMaxTid;
    Thread *p;
    int rc;

    p = (Thread *)FUNC3(sizeof(Thread));
    FUNC0(p, 0, sizeof(Thread));
    p->iTid = iTid;
    p->pArg = pArg;
    p->xProc = xProc;

    rc = FUNC1(&p->tid, NULL, launch_thread_main, (void *)p);
    if( rc!=0 ){
      FUNC4(pErr, rc);
      FUNC2(p);
    }else{
      p->pNext = pThreads->pThread;
      pThreads->pThread = p;
    }
  }
}