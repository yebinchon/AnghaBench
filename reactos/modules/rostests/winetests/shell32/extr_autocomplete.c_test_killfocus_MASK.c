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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hEdit ; 
 int killfocus_count ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    /* Test if WM_KILLFOCUS messages are handled properly by checking if
     * the parent receives an EN_KILLFOCUS message. */
    FUNC0(hEdit);
    killfocus_count = 0;
    FUNC0(0);
    FUNC1(killfocus_count == 1, "Expected one EN_KILLFOCUS message, got: %d\n", killfocus_count);
}