
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int wYear; int wMonth; int wDay; int wDayOfWeek; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LCID ;


 int BUFFER_SIZE ;
 int COUNTOF (int *) ;
 int DATE_LONGDATE ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INVALID_FLAGS ;
 int ERROR_INVALID_PARAMETER ;
 int EXPECT_EQW ;
 int EXPECT_LENW ;
 int GetDateFormatW (int ,int ,TYPE_1__*,int *,int *,int ) ;
 int GetLastError () ;
 int LANG_ENGLISH ;
 int LOCALE_SYSTEM_DEFAULT ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int STRINGSW (char*,char*) ;
 int SUBLANG_ENGLISH_US ;
 int SetLastError (int) ;
 int ok (int,char*,int,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetDateFormatW(void)
{
  int ret;
  SYSTEMTIME curtime;
  WCHAR buffer[BUFFER_SIZE], input[BUFFER_SIZE], Expected[BUFFER_SIZE];
  LCID lcid = MAKELCID(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);

  STRINGSW("","");
  ret = GetDateFormatW(LOCALE_SYSTEM_DEFAULT, DATE_LONGDATE, ((void*)0),
                       input, buffer, COUNTOF(buffer));
  if (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
  {
    win_skip("GetDateFormatW is not implemented\n");
    return;
  }
  ok(!ret && GetLastError() == ERROR_INVALID_FLAGS,
     "Expected ERROR_INVALID_FLAGS, got %d\n", GetLastError());
  EXPECT_EQW;

  STRINGSW("","");
  SetLastError(0xdeadbeef);
  ret = GetDateFormatW (lcid, 0, ((void*)0), input, ((void*)0), COUNTOF(buffer));
  ok( !ret && GetLastError() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

  STRINGSW("","");
  ret = GetDateFormatW (lcid, 0, ((void*)0), input, ((void*)0), 0);
  ok(ret, "Expected ret != 0, got %d, error %d\n", ret, GetLastError());
  EXPECT_LENW; EXPECT_EQW;

  curtime.wYear = 2002;
  curtime.wMonth = 10;
  curtime.wDay = 23;
  curtime.wDayOfWeek = 45612;
  curtime.wHour = 65432;
  curtime.wMinute = 34512;
  curtime.wSecond = 65535;
  curtime.wMilliseconds = 12345;
  STRINGSW("dddd d MMMM yyyy","Wednesday 23 October 2002");
  ret = GetDateFormatW (lcid, 0, &curtime, input, buffer, COUNTOF(buffer));
  ok(ret, "Expected ret != 0, got %d, error %d\n", ret, GetLastError());
  EXPECT_LENW; EXPECT_EQW;



  curtime.wYear = 1601;
  curtime.wMonth = 1;
  curtime.wDay = 1;
  curtime.wDayOfWeek = 0;
  curtime.wHour = 0;
  curtime.wMinute = 0;
  curtime.wSecond = 0;
  curtime.wMilliseconds = 0;
  STRINGSW("dddd d MMMM yyyy","Monday 1 January 1601");
  SetLastError(0xdeadbeef);
  ret = GetDateFormatW (lcid, 0, &curtime, input, buffer, COUNTOF(buffer));
  ok(ret, "Expected ret != 0, got %d, error %d\n", ret, GetLastError());
  EXPECT_LENW; EXPECT_EQW;

  curtime.wYear = 1600;
  curtime.wMonth = 12;
  curtime.wDay = 31;
  curtime.wDayOfWeek = 0;
  curtime.wHour = 23;
  curtime.wMinute = 59;
  curtime.wSecond = 59;
  curtime.wMilliseconds = 999;
  STRINGSW("dddd d MMMM yyyy","Friday 31 December 1600");
  SetLastError(0xdeadbeef);
  ret = GetDateFormatW (lcid, 0, &curtime, input, buffer, COUNTOF(buffer));
  ok( !ret && GetLastError() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
}
