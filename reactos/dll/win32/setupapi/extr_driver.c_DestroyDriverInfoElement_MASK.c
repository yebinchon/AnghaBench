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
struct DriverInfoElement {struct DriverInfoElement* MatchingId; int /*<<< orphan*/  InfFileDetails; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct DriverInfoElement*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC3(struct DriverInfoElement* driverInfo)
{
    FUNC0(driverInfo->InfFileDetails);
    FUNC2(FUNC1(), 0, driverInfo->MatchingId);
    FUNC2(FUNC1(), 0, driverInfo);
    return TRUE;
}