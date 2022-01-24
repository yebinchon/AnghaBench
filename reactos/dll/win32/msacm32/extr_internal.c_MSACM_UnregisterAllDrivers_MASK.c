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
typedef  scalar_t__ PWINE_ACMNOTIFYWND ;
typedef  scalar_t__ PWINE_ACMDRIVERID ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ MSACM_pFirstACMDriverID ; 
 scalar_t__ MSACM_pFirstACMNotifyWnd ; 

void FUNC3(void)
{
    PWINE_ACMNOTIFYWND panwnd = MSACM_pFirstACMNotifyWnd;
    PWINE_ACMDRIVERID p = MSACM_pFirstACMDriverID;

    while (p) {
	FUNC2(p);
	p = FUNC1(p);
    }
    
    while (panwnd) {
	panwnd = FUNC0(panwnd);
    }
}