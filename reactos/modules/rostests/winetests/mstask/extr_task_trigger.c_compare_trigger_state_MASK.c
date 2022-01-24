#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ DaysInterval; } ;
struct TYPE_7__ {TYPE_1__ Daily; } ;
struct TYPE_8__ {scalar_t__ cbTriggerSize; scalar_t__ Reserved1; scalar_t__ wBeginYear; scalar_t__ wBeginMonth; scalar_t__ wBeginDay; scalar_t__ wEndYear; scalar_t__ wEndMonth; scalar_t__ wEndDay; scalar_t__ wStartHour; scalar_t__ wStartMinute; scalar_t__ MinutesDuration; scalar_t__ MinutesInterval; scalar_t__ rgFlags; scalar_t__ TriggerType; scalar_t__ Reserved2; scalar_t__ wRandomMinutesInterval; TYPE_2__ Type; } ;
typedef  TYPE_3__ TASK_TRIGGER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC1(TASK_TRIGGER found_state,
        TASK_TRIGGER expected_state)
{
    FUNC0(found_state.cbTriggerSize == expected_state.cbTriggerSize,
            "cbTriggerSize: Found %d but expected %d\n",
            found_state.cbTriggerSize, expected_state.cbTriggerSize);

    FUNC0(found_state.Reserved1 == expected_state.Reserved1,
            "Reserved1: Found %d but expected %d\n",
            found_state.Reserved1, expected_state.Reserved1);

    FUNC0(found_state.wBeginYear == expected_state.wBeginYear,
            "wBeginYear: Found %d but expected %d\n",
            found_state.wBeginYear, expected_state.wBeginYear);

    FUNC0(found_state.wBeginMonth == expected_state.wBeginMonth,
            "wBeginMonth: Found %d but expected %d\n",
            found_state.wBeginMonth, expected_state.wBeginMonth);

    FUNC0(found_state.wBeginDay == expected_state.wBeginDay,
            "wBeginDay: Found %d but expected %d\n",
            found_state.wBeginDay, expected_state.wBeginDay);

    FUNC0(found_state.wEndYear == expected_state.wEndYear,
            "wEndYear: Found %d but expected %d\n",
            found_state.wEndYear, expected_state.wEndYear);

    FUNC0(found_state.wEndMonth == expected_state.wEndMonth,
            "wEndMonth: Found %d but expected %d\n",
            found_state.wEndMonth, expected_state.wEndMonth);

    FUNC0(found_state.wEndDay == expected_state.wEndDay,
            "wEndDay: Found %d but expected %d\n",
            found_state.wEndDay, expected_state.wEndDay);

    FUNC0(found_state.wStartHour == expected_state.wStartHour,
            "wStartHour: Found %d but expected %d\n",
            found_state.wStartHour, expected_state.wStartHour);

    FUNC0(found_state.wStartMinute == expected_state.wStartMinute,
            "wStartMinute: Found %d but expected %d\n",
            found_state.wStartMinute, expected_state.wStartMinute);

    FUNC0(found_state.MinutesDuration == expected_state.MinutesDuration,
            "MinutesDuration: Found %d but expected %d\n",
            found_state.MinutesDuration, expected_state.MinutesDuration);

    FUNC0(found_state.MinutesInterval == expected_state.MinutesInterval,
            "MinutesInterval: Found %d but expected %d\n",
            found_state.MinutesInterval, expected_state.MinutesInterval);

    FUNC0(found_state.rgFlags == expected_state.rgFlags,
            "rgFlags: Found %d but expected %d\n",
            found_state.rgFlags, expected_state.rgFlags);

    FUNC0(found_state.TriggerType == expected_state.TriggerType,
            "TriggerType: Found %d but expected %d\n",
            found_state.TriggerType, expected_state.TriggerType);

    FUNC0(found_state.Type.Daily.DaysInterval == expected_state.Type.Daily.DaysInterval,
            "Type.Daily.DaysInterval: Found %d but expected %d\n",
            found_state.Type.Daily.DaysInterval, expected_state.Type.Daily.DaysInterval);

    FUNC0(found_state.Reserved2 == expected_state.Reserved2,
            "Reserved2: Found %d but expected %d\n",
            found_state.Reserved2, expected_state.Reserved2);

    FUNC0(found_state.wRandomMinutesInterval == expected_state.wRandomMinutesInterval,
            "wRandomMinutesInterval: Found %d but expected %d\n",
            found_state.wRandomMinutesInterval, expected_state.wRandomMinutesInterval);

    return TRUE;
}