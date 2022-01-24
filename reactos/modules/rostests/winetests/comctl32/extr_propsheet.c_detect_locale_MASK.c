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
typedef  int /*<<< orphan*/  reading_layout ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,void*,int) ; 
 int LOCALE_IREADINGLAYOUT ; 
 int LOCALE_RETURN_NUMBER ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int rtl ; 

__attribute__((used)) static void FUNC1(void)
{
    DWORD reading_layout;
    rtl = FUNC0(LOCALE_USER_DEFAULT, LOCALE_IREADINGLAYOUT | LOCALE_RETURN_NUMBER,
            (void *)&reading_layout, sizeof(reading_layout)) && reading_layout == 1;
}