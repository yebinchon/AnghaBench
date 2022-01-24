#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* pThread; } ;
typedef  TYPE_1__ Threadset ;
struct TYPE_9__ {int iTid; int /*<<< orphan*/  tid; struct TYPE_9__* pNext; } ;
typedef  TYPE_2__ Thread ;
struct TYPE_10__ {scalar_t__ rc; } ;
typedef  TYPE_3__ Error ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC5(
  Error *pErr,                    /* IN/OUT: Error code */
  Threadset *pThreads             /* Thread set */
){
  Thread *p;
  Thread *pNext;
  for(p=pThreads->pThread; p; p=pNext){
    void *ret;
    pNext = p->pNext;
    int rc;
    rc = FUNC2(p->tid, &ret);
    if( rc!=0 ){
      if( pErr->rc==SQLITE_OK ) FUNC4(pErr, rc);
    }else{
      FUNC1("Thread %d says: %s\n", p->iTid, (ret==0 ? "..." : (char *)ret));
      FUNC0(stdout);
    }
    FUNC3(p);
  }
  pThreads->pThread = 0;
}