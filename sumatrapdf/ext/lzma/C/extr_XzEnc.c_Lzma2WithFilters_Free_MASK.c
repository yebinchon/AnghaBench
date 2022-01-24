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
struct TYPE_3__ {int /*<<< orphan*/ * lzma2; int /*<<< orphan*/  sb; int /*<<< orphan*/  filter; } ;
typedef  TYPE_1__ CLzma2WithFilters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(CLzma2WithFilters *p)
{
  FUNC2(&p->filter);
  #ifdef USE_SUBBLOCK
  SbEncInStream_Free(&p->sb);
  #endif
  if (p->lzma2)
  {
    FUNC0(p->lzma2);
    p->lzma2 = NULL;
  }
}