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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int numline; size_t sizebc; } ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  LexState ;
typedef  TYPE_1__ GCproto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(LexState *ls, GCproto *pt, MSize sizedbg)
{
  void *lineinfo = (void *)FUNC3(pt);
  FUNC0(ls, lineinfo, sizedbg);
  /* Swap lineinfo if the endianess differs. */
  if (FUNC1(ls) && pt->numline >= 256) {
    MSize i, n = pt->sizebc-1;
    if (pt->numline < 65536) {
      uint16_t *p = (uint16_t *)lineinfo;
      for (i = 0; i < n; i++) p[i] = (uint16_t)((p[i] >> 8)|(p[i] << 8));
    } else {
      uint32_t *p = (uint32_t *)lineinfo;
      for (i = 0; i < n; i++) p[i] = FUNC2(p[i]);
    }
  }
}