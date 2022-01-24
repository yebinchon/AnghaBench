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
 int /*<<< orphan*/  currentrotate ; 
 int /*<<< orphan*/  currentzoom ; 
 int /*<<< orphan*/  draw_page_bounds ; 
 int /*<<< orphan*/  draw_page_ctm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_bounds ; 

void FUNC2(void)
{
	draw_page_ctm = FUNC0(page_bounds, currentzoom, currentrotate);
	draw_page_bounds = FUNC1(page_bounds, draw_page_ctm);
}