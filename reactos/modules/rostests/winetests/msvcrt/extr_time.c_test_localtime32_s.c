
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; } ;
typedef int errno_t ;
typedef int __time32_t ;


 int EBADF ;
 int EINVAL ;
 int errno ;
 int memset (struct tm*,int ,int) ;
 int ok (int,char*,int,...) ;
 int p_localtime32_s (struct tm*,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_localtime32_s(void)
{
    struct tm tm;
    __time32_t time;
    errno_t err;

    if (!p_localtime32_s)
    {
        win_skip("Skipping _localtime32_s tests\n");
        return;
    }

    errno = EBADF;
    err = p_localtime32_s(((void*)0), ((void*)0));
    ok(err == EINVAL, "Expected _localtime32_s to return EINVAL, got %d\n", err);
    ok(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    time = 0x12345678;
    err = p_localtime32_s(((void*)0), &time);
    ok(err == EINVAL, "Expected _localtime32_s to return EINVAL, got %d\n", err);
    ok(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    memset(&tm, 0, sizeof(tm));
    errno = EBADF;
    err = p_localtime32_s(&tm, ((void*)0));
    ok(err == EINVAL, "Expected _localtime32_s to return EINVAL, got %d\n", err);
    ok(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    ok(tm.tm_sec == -1 && tm.tm_min == -1 && tm.tm_hour == -1 &&
       tm.tm_mday == -1 && tm.tm_mon == -1 && tm.tm_year == -1 &&
       tm.tm_wday == -1 && tm.tm_yday == -1 && tm.tm_isdst == -1,
       "Expected tm structure members to be initialized to -1, got "
       "(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n", tm.tm_sec, tm.tm_min,
       tm.tm_hour, tm.tm_mday, tm.tm_mon, tm.tm_year, tm.tm_wday, tm.tm_yday,
       tm.tm_isdst);

    memset(&tm, 0, sizeof(tm));
    time = -1;
    errno = EBADF;
    err = p_localtime32_s(&tm, &time);
    ok(err == EINVAL, "Expected _localtime32_s to return EINVAL, got %d\n", err);
    ok(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    ok(tm.tm_sec == -1 && tm.tm_min == -1 && tm.tm_hour == -1 &&
       tm.tm_mday == -1 && tm.tm_mon == -1 && tm.tm_year == -1 &&
       tm.tm_wday == -1 && tm.tm_yday == -1 && tm.tm_isdst == -1,
       "Expected tm structure members to be initialized to -1, got "
       "(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n", tm.tm_sec, tm.tm_min,
       tm.tm_hour, tm.tm_mday, tm.tm_mon, tm.tm_year, tm.tm_wday, tm.tm_yday,
       tm.tm_isdst);
}
