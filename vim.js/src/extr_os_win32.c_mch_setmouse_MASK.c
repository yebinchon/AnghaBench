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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_MOUSE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int g_fMouseActive ; 
 int /*<<< orphan*/  g_fMouseAvail ; 
 int /*<<< orphan*/  g_hConIn ; 

void
FUNC2(int on)
{
    DWORD cmodein;

    if (!g_fMouseAvail)
	return;

    g_fMouseActive = on;
    FUNC0(g_hConIn, &cmodein);

    if (g_fMouseActive)
	cmodein |= ENABLE_MOUSE_INPUT;
    else
	cmodein &= ~ENABLE_MOUSE_INPUT;

    FUNC1(g_hConIn, cmodein);
}