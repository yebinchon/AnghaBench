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
struct TYPE_2__ {int status; scalar_t__ started; int /*<<< orphan*/  stop; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 TYPE_1__ bgprint ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(void)
{
	if (!bgprint.active || !bgprint.started)
		return 0;

	FUNC0(&bgprint.stop);
	bgprint.started = 0;
	return bgprint.status;
}