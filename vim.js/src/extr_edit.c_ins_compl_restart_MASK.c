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
 scalar_t__ compl_cont_mode ; 
 scalar_t__ compl_cont_status ; 
 scalar_t__ compl_matches ; 
 int /*<<< orphan*/  compl_started ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1()
{
    FUNC0();
    compl_started = FALSE;
    compl_matches = 0;
    compl_cont_status = 0;
    compl_cont_mode = 0;
}