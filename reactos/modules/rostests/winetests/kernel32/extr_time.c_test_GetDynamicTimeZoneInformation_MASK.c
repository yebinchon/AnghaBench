#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Bias; scalar_t__* StandardName; scalar_t__ StandardBias; scalar_t__* DaylightName; scalar_t__* TimeZoneKeyName; int /*<<< orphan*/  DaylightDate; int /*<<< orphan*/  StandardDate; } ;
struct TYPE_5__ {scalar_t__ Bias; scalar_t__* StandardName; scalar_t__ StandardBias; scalar_t__* DaylightName; int /*<<< orphan*/  DaylightDate; int /*<<< orphan*/  StandardDate; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  TYPE_2__ DYNAMIC_TIME_ZONE_INFORMATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

__attribute__((used)) static void FUNC8(void)
{
    DYNAMIC_TIME_ZONE_INFORMATION dyninfo;
    TIME_ZONE_INFORMATION tzinfo;
    DWORD ret, ret2;

    if (!&pGetDynamicTimeZoneInformation)
    {
        FUNC6("GetDynamicTimeZoneInformation() is not supported.\n");
        return;
    }

    ret = FUNC4(&dyninfo);
    ret2 = FUNC0(&tzinfo);
    FUNC3(ret == ret2, "got %d, %d\n", ret, ret2);

    FUNC3(dyninfo.Bias == tzinfo.Bias, "got %d, %d\n", dyninfo.Bias, tzinfo.Bias);
    FUNC3(!FUNC1(dyninfo.StandardName, tzinfo.StandardName), "got std name %s, %s\n",
        FUNC7(dyninfo.StandardName), FUNC7(tzinfo.StandardName));
    FUNC3(!FUNC2(&dyninfo.StandardDate, &tzinfo.StandardDate, sizeof(dyninfo.StandardDate)), "got different StandardDate\n");
    FUNC3(dyninfo.StandardBias == tzinfo.StandardBias, "got %d, %d\n", dyninfo.StandardBias, tzinfo.StandardBias);
    FUNC3(!FUNC1(dyninfo.DaylightName, tzinfo.DaylightName), "got daylight name %s, %s\n",
        FUNC7(dyninfo.DaylightName), FUNC7(tzinfo.DaylightName));
    FUNC3(!FUNC2(&dyninfo.DaylightDate, &tzinfo.DaylightDate, sizeof(dyninfo.DaylightDate)), "got different DaylightDate\n");
    FUNC3(dyninfo.TimeZoneKeyName[0] != 0, "got empty tz keyname\n");
    FUNC5("Dyn TimeZoneKeyName %s\n", FUNC7(dyninfo.TimeZoneKeyName));
}