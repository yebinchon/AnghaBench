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
typedef  int /*<<< orphan*/  PETHREAD ;
typedef  int /*<<< orphan*/ * PCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* GspOutBuffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

VOID
FUNC2(PCHAR Request)
{
    PETHREAD ThreadInfo;
    PCHAR ptr = &Request[0];

    if (FUNC0(ptr, &ThreadInfo))
    {
        FUNC1(ThreadInfo);

        GspOutBuffer[0] = 'O';
        GspOutBuffer[1] = 'K';
        GspOutBuffer[2] = '\0';
    }
    else
    {
        GspOutBuffer[0] = 'E';
        GspOutBuffer[1] = '\0';
    }
}