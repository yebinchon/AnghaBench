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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FAIL ; 
 int OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_notopen ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ p_vfile ; 
 scalar_t__ verbose_did_open ; 
 int /*<<< orphan*/ * verbose_fd ; 

int
FUNC3()
{
    if (verbose_fd == NULL && !verbose_did_open)
    {
	/* Only give the error message once. */
	verbose_did_open = TRUE;

	verbose_fd = FUNC2((char *)p_vfile, "a");
	if (verbose_fd == NULL)
	{
	    FUNC0(FUNC1(e_notopen), p_vfile);
	    return FAIL;
	}
    }
    return OK;
}