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
struct TYPE_3__ {scalar_t__ historySize; scalar_t__ lzPos; int /*<<< orphan*/  fixedHashSize; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ CMatchFinderMt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(CMatchFinderMt *p)
{
  FUNC0(p->lzPos - p->historySize - 1, p->hash, p->fixedHashSize);
  p->lzPos = p->historySize + 1;
}