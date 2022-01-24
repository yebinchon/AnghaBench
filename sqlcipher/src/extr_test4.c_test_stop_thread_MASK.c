#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ busy; scalar_t__ zFilename; scalar_t__ zArg; int /*<<< orphan*/  opnum; scalar_t__ xOp; } ;
typedef  TYPE_1__ Thread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(Thread *p){
  FUNC1(p);
  p->xOp = 0;
  p->opnum++;
  FUNC1(p);
  FUNC0(p->zArg);
  p->zArg = 0;
  FUNC0(p->zFilename);
  p->zFilename = 0;
  p->busy = 0;
}