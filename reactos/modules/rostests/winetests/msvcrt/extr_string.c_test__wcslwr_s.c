
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ARRAY_SIZE (char const*) ;
 int EBADF ;
 int EINVAL ;
 int errno ;
 int ok (int,char*,...) ;
 int p_wcslwr_s (char*,int) ;
 int wcscmp (char*,char const*) ;
 int wcscpy (char*,char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__wcslwr_s(void)
{
    static const WCHAR mixedString[] = {'M', 'i', 'X', 'e', 'D', 'l', 'o', 'w',
                                        'e', 'r', 'U', 'P', 'P', 'E', 'R', 0};
    static const WCHAR expectedString[] = {'m', 'i', 'x', 'e', 'd', 'l', 'o',
                                           'w', 'e', 'r', 'u', 'p', 'p', 'e',
                                           'r', 0};
    WCHAR buffer[2*ARRAY_SIZE(mixedString)];
    int ret;

    if (!p_wcslwr_s)
    {
        win_skip("_wcslwr_s not found\n");
        return;
    }


    errno = EBADF;
    ret = p_wcslwr_s(((void*)0), 0);
    ok(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno EINVAL, got %d\n", errno);


    errno = EBADF;
    ret = p_wcslwr_s(((void*)0), ARRAY_SIZE(buffer));
    ok(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno EINVAL, got %d\n", errno);


    errno = EBADF;
    buffer[0] = 'a';
    ret = p_wcslwr_s(buffer, 0);
    ok(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno EINVAL, got %d\n", errno);
    ok(buffer[0] == 0, "expected empty string\n");


    buffer[0] = 0;
    ret = p_wcslwr_s(buffer, 1);
    ok(ret == 0, "got %d\n", ret);
    ok(buffer[0] == 0, "expected buffer to be unchanged\n");


    errno = EBADF;
    buffer[0] = 'x';
    ret = p_wcslwr_s(buffer, 0);
    ok(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    ok(buffer[0] == '\0', "expected empty string\n");


    errno = EBADF;
    buffer[0] = 'x';
    ret = p_wcslwr_s(buffer, 1);
    ok(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    ok(buffer[0] == '\0', "expected empty string\n");


    wcscpy(buffer, mixedString);
    errno = EBADF;
    ret = p_wcslwr_s(buffer, 0);
    ok(ret == EINVAL, "Expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    ok(buffer[0] == '\0', "expected empty string\n");


    wcscpy(buffer, mixedString);
    ret = p_wcslwr_s(buffer, ARRAY_SIZE(mixedString));
    ok(ret == 0, "expected 0, got %d\n", ret);
    ok(!wcscmp(buffer, expectedString), "expected lowercase\n");


    wcscpy(buffer, mixedString);
    errno = EBADF;
    ret = p_wcslwr_s(buffer, ARRAY_SIZE(mixedString) - 1);
    ok(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    ok(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    ok(buffer[0] == '\0', "expected empty string\n");


    wcscpy(buffer, mixedString);
    ret = p_wcslwr_s(buffer, ARRAY_SIZE(buffer));
    ok(ret == 0, "expected 0, got %d\n", ret);
    ok(!wcscmp(buffer, expectedString), "expected lowercase\n");
}
