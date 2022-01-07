
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONGLONG ;
typedef int LONGLONG ;
typedef int FILETIME ;


 int GetSystemTimeAsFileTime (int *) ;
 scalar_t__ get_longlong_time (int *) ;
 int ok (int,char*) ;
 int pGetSystemTimePreciseAsFileTime (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetSystemTimePreciseAsFileTime(void)
{
    FILETIME ft;
    ULONGLONG time1, time2;
    LONGLONG diff;

    if (!pGetSystemTimePreciseAsFileTime)
    {
        win_skip("GetSystemTimePreciseAsFileTime() is not supported.\n");
        return;
    }

    GetSystemTimeAsFileTime(&ft);
    time1 = get_longlong_time(&ft);
    pGetSystemTimePreciseAsFileTime(&ft);
    time2 = get_longlong_time(&ft);
    diff = time2 - time1;
    if (diff < 0)
        diff = -diff;
    ok(diff < 1000000, "Difference between GetSystemTimeAsFileTime and GetSystemTimePreciseAsFileTime more than 100 ms\n");

    pGetSystemTimePreciseAsFileTime(&ft);
    time1 = get_longlong_time(&ft);
    do {
        pGetSystemTimePreciseAsFileTime(&ft);
        time2 = get_longlong_time(&ft);
    } while (time2 == time1);
    diff = time2 - time1;
    ok(diff < 10000 && diff > 0, "GetSystemTimePreciseAsFileTime incremented by more than 1 ms\n");
}
