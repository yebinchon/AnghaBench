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
typedef  int /*<<< orphan*/  PWINE_ACMDRIVERID ;
typedef  int /*<<< orphan*/  HACMOBJ ;
typedef  scalar_t__ HACMDRIVERID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINE_ACMOBJ_DRIVERID ; 

PWINE_ACMDRIVERID FUNC1(HACMDRIVERID hDriverID)
{
    return (PWINE_ACMDRIVERID)FUNC0((HACMOBJ)hDriverID, WINE_ACMOBJ_DRIVERID);
}