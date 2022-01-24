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
typedef  int /*<<< orphan*/  VOID ;

/* Variables and functions */
 int /*<<< orphan*/  Back1But ; 
 int /*<<< orphan*/  Back2But ; 
 int MAXMESSAGEBUTTONS ; 
 int /*<<< orphan*/ * MessageButtons ; 
 int /*<<< orphan*/  NextBut ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID
FUNC1()
    {
        int i;
        for (i=0;i<26;i++)FUNC0(MessageButtons[i],SW_HIDE);
        for(;i<MAXMESSAGEBUTTONS;i++)FUNC0(MessageButtons[i],SW_SHOW);
        FUNC0(Back2But,SW_SHOW);

        FUNC0(Back1But,SW_HIDE);
        FUNC0(NextBut,SW_HIDE);
    }