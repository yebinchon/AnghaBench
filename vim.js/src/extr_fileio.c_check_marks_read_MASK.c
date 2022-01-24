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
struct TYPE_2__ {scalar_t__ b_marks_read; int /*<<< orphan*/ * b_ffname; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VIF_WANT_MARKS ; 
 TYPE_1__* curbuf ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2()
{
    if (!curbuf->b_marks_read && FUNC0('\'') > 0
						  && curbuf->b_ffname != NULL)
	FUNC1(NULL, VIF_WANT_MARKS);

    /* Always set b_marks_read; needed when 'viminfo' is changed to include
     * the ' parameter after opening a buffer. */
    curbuf->b_marks_read = TRUE;
}