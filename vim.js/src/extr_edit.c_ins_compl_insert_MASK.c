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
struct TYPE_2__ {int cp_flags; scalar_t__ cp_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int ORIGINAL_TEXT ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* compl_shown_match ; 
 int /*<<< orphan*/  compl_used_match ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void
FUNC2()
{
    FUNC0(compl_shown_match->cp_str + FUNC1());
    if (compl_shown_match->cp_flags & ORIGINAL_TEXT)
	compl_used_match = FALSE;
    else
	compl_used_match = TRUE;
}