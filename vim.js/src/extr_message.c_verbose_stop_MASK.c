#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verbose_did_open ; 
 int /*<<< orphan*/ * verbose_fd ; 

void
FUNC1()
{
    if (verbose_fd != NULL)
    {
	FUNC0(verbose_fd);
	verbose_fd = NULL;
    }
    verbose_did_open = FALSE;
}