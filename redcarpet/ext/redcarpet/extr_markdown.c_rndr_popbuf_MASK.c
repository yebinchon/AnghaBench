#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sd_markdown {TYPE_1__* work_bufs; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(struct sd_markdown *rndr, int type)
{
	rndr->work_bufs[type].size--;
}