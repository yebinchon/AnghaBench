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
struct TYPE_2__ {int xmlDoValidityCheckingDefaultValue; } ;

/* Variables and functions */
 scalar_t__ IS_MAIN_THREAD ; 
 int xmlDoValidityCheckingDefaultValue ; 
 TYPE_1__* FUNC0 () ; 

int *
FUNC1(void) {
    if (IS_MAIN_THREAD)
	return (&xmlDoValidityCheckingDefaultValue);
    else
	return (&FUNC0()->xmlDoValidityCheckingDefaultValue);
}