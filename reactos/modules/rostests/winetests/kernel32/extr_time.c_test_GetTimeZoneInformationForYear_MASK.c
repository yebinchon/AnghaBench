#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dyn_tzinfo ;
typedef  int WORD ;
typedef  char WCHAR ;
struct TYPE_16__ {int wMonth; } ;
struct TYPE_15__ {int /*<<< orphan*/  TimeZoneKeyName; scalar_t__ DynamicDaylightTimeDisabled; } ;
struct TYPE_14__ {int wYear; } ;
struct TYPE_13__ {int Bias; int StandardBias; int DaylightBias; int /*<<< orphan*/  DaylightName; int /*<<< orphan*/  StandardName; TYPE_8__ DaylightDate; TYPE_8__ StandardDate; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_3__ DYNAMIC_TIME_ZONE_INFORMATION ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FALSE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (int,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void)
{
    BOOL ret;
    SYSTEMTIME systemtime;
    TIME_ZONE_INFORMATION local_tzinfo, tzinfo, tzinfo2;
    DYNAMIC_TIME_ZONE_INFORMATION dyn_tzinfo;
    static const WCHAR std_tzname[] = {'G','r','e','e','n','l','a','n','d',' ','S','t','a','n','d','a','r','d',' ','T','i','m','e',0};
    static const WCHAR dlt_tzname[] = {'G','r','e','e','n','l','a','n','d',' ','D','a','y','l','i','g','h','t',' ','T','i','m','e',0};
    WORD std_day, dlt_day;

    if (!&pGetTimeZoneInformationForYear || !&pGetDynamicTimeZoneInformation)
    {
        FUNC13("GetTimeZoneInformationForYear not available\n");
        return;
    }

    FUNC1(&systemtime);

    FUNC2(&local_tzinfo);

    ret = FUNC12(systemtime.wYear, NULL, &tzinfo);
    FUNC10(ret == TRUE, "GetTimeZoneInformationForYear failed, err %u\n", FUNC0());
    FUNC10(tzinfo.Bias == local_tzinfo.Bias, "Expected Bias %d, got %d\n", local_tzinfo.Bias, tzinfo.Bias);
    FUNC10(!FUNC6(tzinfo.StandardName, local_tzinfo.StandardName),
        "Expected StandardName %s, got %s\n", FUNC14(local_tzinfo.StandardName), FUNC14(tzinfo.StandardName));
    FUNC10(!FUNC8(&tzinfo.StandardDate, &local_tzinfo.StandardDate, sizeof(SYSTEMTIME)), "StandardDate does not match\n");
    FUNC10(tzinfo.StandardBias == local_tzinfo.StandardBias, "Expected StandardBias %d, got %d\n", local_tzinfo.StandardBias, tzinfo.StandardBias);
    FUNC10(!FUNC6(tzinfo.DaylightName, local_tzinfo.DaylightName),
        "Expected DaylightName %s, got %s\n", FUNC14(local_tzinfo.DaylightName), FUNC14(tzinfo.DaylightName));
    FUNC10(!FUNC8(&tzinfo.DaylightDate, &local_tzinfo.DaylightDate, sizeof(SYSTEMTIME)), "DaylightDate does not match\n");
    FUNC10(tzinfo.DaylightBias == local_tzinfo.DaylightBias, "Expected DaylightBias %d, got %d\n", local_tzinfo.DaylightBias, tzinfo.DaylightBias);

    FUNC11(&dyn_tzinfo);

    ret = FUNC12(systemtime.wYear, &dyn_tzinfo, &tzinfo);
    FUNC10(ret == TRUE, "GetTimeZoneInformationForYear failed, err %u\n", FUNC0());
    FUNC10(tzinfo.Bias == local_tzinfo.Bias, "Expected Bias %d, got %d\n", local_tzinfo.Bias, tzinfo.Bias);
    FUNC10(!FUNC6(tzinfo.StandardName, local_tzinfo.StandardName),
        "Expected StandardName %s, got %s\n", FUNC14(local_tzinfo.StandardName), FUNC14(tzinfo.StandardName));
    FUNC10(!FUNC8(&tzinfo.StandardDate, &local_tzinfo.StandardDate, sizeof(SYSTEMTIME)), "StandardDate does not match\n");
    FUNC10(tzinfo.StandardBias == local_tzinfo.StandardBias, "Expected StandardBias %d, got %d\n", local_tzinfo.StandardBias, tzinfo.StandardBias);
    FUNC10(!FUNC6(tzinfo.DaylightName, local_tzinfo.DaylightName),
        "Expected DaylightName %s, got %s\n", FUNC14(local_tzinfo.DaylightName), FUNC14(tzinfo.DaylightName));
    FUNC10(!FUNC8(&tzinfo.DaylightDate, &local_tzinfo.DaylightDate, sizeof(SYSTEMTIME)), "DaylightDate does not match\n");
    FUNC10(tzinfo.DaylightBias == local_tzinfo.DaylightBias, "Expected DaylightBias %d, got %d\n", local_tzinfo.DaylightBias, tzinfo.DaylightBias);

    FUNC9(&dyn_tzinfo, 0xaa, sizeof(dyn_tzinfo));
    FUNC7(dyn_tzinfo.TimeZoneKeyName, std_tzname);
    dyn_tzinfo.DynamicDaylightTimeDisabled = FALSE;

    ret = FUNC12(2015, &dyn_tzinfo, &tzinfo);
    FUNC10(ret == TRUE, "GetTimeZoneInformationForYear failed, err %u\n", FUNC0());
    FUNC10(tzinfo.Bias == 180, "Expected Bias 180, got %d\n", tzinfo.Bias);
    FUNC10(tzinfo.StandardDate.wMonth == 10, "Expected standard month 10, got %d\n", tzinfo.StandardDate.wMonth);
    std_day = FUNC5(&tzinfo.StandardDate, 2015);
    FUNC10(std_day == 24, "Expected standard day 24, got %d\n", std_day);
    FUNC10(tzinfo.StandardBias == 0, "Expected StandardBias 0, got %d\n", tzinfo.StandardBias);
    FUNC10(tzinfo.DaylightDate.wMonth == 3, "Expected daylight month 3, got %d\n", tzinfo.DaylightDate.wMonth);
    dlt_day = FUNC5(&tzinfo.DaylightDate, 2015);
    FUNC10(dlt_day == 28, "Expected daylight day 28, got %d\n", dlt_day);
    FUNC10(tzinfo.DaylightBias == -60, "Expected DaylightBias -60, got %d\n", tzinfo.DaylightBias);

    ret = FUNC12(2016, &dyn_tzinfo, &tzinfo2);
    FUNC10(ret == TRUE, "GetTimeZoneInformationForYear failed, err %u\n", FUNC0());
    FUNC10(!FUNC6(tzinfo.StandardName, tzinfo2.StandardName),
        "Got differing StandardName values %s and %s\n",
        FUNC14(tzinfo.StandardName), FUNC14(tzinfo2.StandardName));
    FUNC10(!FUNC6(tzinfo.DaylightName, tzinfo2.DaylightName),
        "Got differing DaylightName values %s and %s\n",
        FUNC14(tzinfo.DaylightName), FUNC14(tzinfo2.DaylightName));

    FUNC9(&dyn_tzinfo, 0xaa, sizeof(dyn_tzinfo));
    FUNC7(dyn_tzinfo.TimeZoneKeyName, dlt_tzname);

    FUNC3(0xdeadbeef);
    ret = FUNC12(2015, &dyn_tzinfo, &tzinfo);
    FUNC10((ret == FALSE && FUNC0() == ERROR_FILE_NOT_FOUND) ||
       FUNC4(ret == TRUE) /* vista,7 */,
       "GetTimeZoneInformationForYear err %u\n", FUNC0());
}