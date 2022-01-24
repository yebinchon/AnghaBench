#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_5__ {int pbMask; int /*<<< orphan*/  rc; scalar_t__ writeEndMark; int /*<<< orphan*/  finished; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static SRes FUNC4(CLzmaEnc *p, UInt32 nowPos)
{
  /* ReleaseMFStream(); */
  p->finished = True;
  if (p->writeEndMark)
    FUNC3(p, nowPos & p->pbMask);
  FUNC1(&p->rc);
  FUNC2(&p->rc);
  return FUNC0(p);
}