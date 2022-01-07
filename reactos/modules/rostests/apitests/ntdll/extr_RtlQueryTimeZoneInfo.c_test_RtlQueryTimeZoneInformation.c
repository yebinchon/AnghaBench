
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tzinfo ;
typedef int tziNew ;
struct TYPE_15__ {int Month; int Day; int Weekday; int Year; } ;
struct TYPE_14__ {int Month; int Day; int Weekday; int Year; } ;
struct TYPE_17__ {int Bias; int DaylightBias; int StandardBias; TYPE_4__ StandardDate; TYPE_3__ DaylightDate; } ;
struct TYPE_13__ {int wMonth; int wDayOfWeek; int wDay; int wHour; } ;
struct TYPE_12__ {int wMonth; int wDayOfWeek; int wDay; int wHour; } ;
struct TYPE_16__ {int Bias; int StandardBias; int DaylightBias; int DaylightName; int StandardName; TYPE_2__ DaylightDate; TYPE_1__ StandardDate; } ;
typedef TYPE_5__ TIME_ZONE_INFORMATION ;
typedef TYPE_6__ RTL_TIME_ZONE_INFORMATION ;
typedef int NTSTATUS ;
typedef scalar_t__ DWORD ;


 int GetLastError () ;
 scalar_t__ GetTimeZoneInformation (TYPE_5__*) ;
 int STATUS_SUCCESS ;
 int SetLastError (int) ;
 int SetTimeZoneInformation (TYPE_5__*) ;
 scalar_t__ TIME_ZONE_ID_DAYLIGHT ;
 scalar_t__ TIME_ZONE_ID_STANDARD ;
 scalar_t__ TIME_ZONE_ID_UNKNOWN ;
 int ZeroMemory (TYPE_5__*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 int ok (int,char*,int,...) ;
 int pRtlQueryTimeZoneInformation (TYPE_6__*) ;
 int wcscmp (int ,int ) ;
 int wcscpy (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlQueryTimeZoneInformation(void)
{
    RTL_TIME_ZONE_INFORMATION tzinfo;
    NTSTATUS status;
    TIME_ZONE_INFORMATION tziOld, tziNew, tziTest;
    DWORD dwRet;



    dwRet = GetTimeZoneInformation(&tziOld);

    ok(dwRet == TIME_ZONE_ID_STANDARD || dwRet == TIME_ZONE_ID_UNKNOWN || dwRet == TIME_ZONE_ID_DAYLIGHT,
        "Get Time Zone Name failed with error = %ld.\n", GetLastError());



    ZeroMemory(&tziNew, sizeof(tziNew));
    tziNew.Bias = 360;
    wcscpy(tziNew.StandardName, L"Test Standard Zone");
    tziNew.StandardDate.wMonth = 11;
    tziNew.StandardDate.wDayOfWeek = 5;
    tziNew.StandardDate.wDay = 3;
    tziNew.StandardDate.wHour = 2;
    tziNew.StandardBias = 120;

    wcscpy(tziNew.DaylightName, L"Test Daylight Zone");
    tziNew.DaylightDate.wMonth = 4;
    tziNew.DaylightDate.wDayOfWeek = 6;
    tziNew.DaylightDate.wDay = 2;
    tziNew.DaylightDate.wHour = 2;
    tziNew.DaylightBias = -60;



    SetLastError(0xDEADBEEF);

    ok(SetTimeZoneInformation(&tziNew) ,
        "Set Time Zone Information failed with error = %ld.\n", GetLastError());



    if(GetLastError() != 0xDEADBEEF)
    {
        win_skip("SetTimeZoneInformation() is not available, so tests cannot be run.\n");
        return;
    }



    dwRet = GetTimeZoneInformation(&tziTest);

    ok(dwRet == TIME_ZONE_ID_STANDARD || dwRet == TIME_ZONE_ID_UNKNOWN || dwRet == TIME_ZONE_ID_DAYLIGHT,
        "Get Time Zone Information Returned failed with error = %ld.\n", GetLastError());

    ok(!wcscmp(tziTest.StandardName, tziNew.StandardName),
        "Standard Time Zone Name = %ls, expected %ls.\n", tziTest.StandardName, tziNew.StandardName);

    ok(!wcscmp(tziTest.DaylightName, tziNew.DaylightName),
        "Standard Time Zone Name = %ls, expected %ls.\n", tziTest.DaylightName, tziNew.DaylightName);



    if (!pRtlQueryTimeZoneInformation)
    {
        win_skip("pRtlQueryTimeZoneInformation() fails, so tests cannot be run.\n");
        return;
    }


    memset(&tzinfo, 0, sizeof(tzinfo));


    status = pRtlQueryTimeZoneInformation(&tzinfo);
    ok(status == STATUS_SUCCESS, "pRtlQueryTimeZoneInformation failed, got %08lx\n", status);


    ok(tzinfo.DaylightDate.Month == 4, "tzinfo.DaylightDate.wMonth expected '4', got '%d'.\n", tzinfo.DaylightDate.Month);
    ok(tzinfo.DaylightDate.Day == 2, "tzinfo.DaylightDate.wDay expected '2', got '%d'.\n", tzinfo.DaylightDate.Day);
    ok(tzinfo.DaylightDate.Weekday == 6, "tzinfo.DaylightDate.wDayOfWeek expected '6', got '%d'.\n", tzinfo.DaylightDate.Weekday);
    ok(tzinfo.DaylightDate.Year == 0, "tzinfo.DaylightDate.wYear expected '0', got '%d'.\n", tzinfo.DaylightDate.Year);


    ok(tzinfo.StandardDate.Month == 11, "tzinfo.StandardDate.wMonth expected '11', got '%d'.\n", tzinfo.StandardDate.Month);
    ok(tzinfo.StandardDate.Day == 3, "tzinfo.StandardDate.wDay expected '3', got '%d'.\n", tzinfo.StandardDate.Day);
    ok(tzinfo.StandardDate.Weekday == 5, "tzinfo.StandardDate.wDayOfWeek expected '5', got '%d'.\n", tzinfo.StandardDate.Weekday);
    ok(tzinfo.StandardDate.Year == 0, "tzinfo.StandardDate.wYear expected '0', got '%d'.\n", tzinfo.StandardDate.Year);


    ok(tzinfo.Bias == 360, "tzinfo.Bias expected '360', got '%ld'.\n", tzinfo.Bias);
    ok(tzinfo.DaylightBias == -60, "tzinfo.DaylightBias expected '-60', got '%ld'.\n", tzinfo.DaylightBias);
    ok(tzinfo.StandardBias == 120, "tzinfo.StandardBias expected '120', got '%ld'.\n", tzinfo.StandardBias);


    ok(SetTimeZoneInformation(&tziOld),
        "Set Time Zone Information failed with error = %ld.\n", GetLastError());

}
