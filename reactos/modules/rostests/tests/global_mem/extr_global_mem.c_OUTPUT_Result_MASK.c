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
typedef  int TEST_STATUS ;

/* Variables and functions */
#define  FAILED 130 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  PASSED 129 
#define  SKIPPED 128 

void FUNC1(TEST_STATUS status)
{
    switch (status)
    {
    case PASSED:  FUNC0("==> PASSED"); break;
    case FAILED:  FUNC0("*** FAILED"); break;
    case SKIPPED: FUNC0("==> SKIPPED"); break;
    }
    FUNC0("");
}