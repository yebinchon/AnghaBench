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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WC_IPADDRESSA ; 
 int WS_BORDER ; 
 int WS_VISIBLE ; 

__attribute__((used)) static HWND FUNC1 (void)
{
    HWND handle;

    handle = FUNC0(0, WC_IPADDRESSA, NULL,
			     WS_BORDER|WS_VISIBLE, 0, 0, 0, 0,
			     NULL, NULL, NULL, NULL);
    return handle;
}