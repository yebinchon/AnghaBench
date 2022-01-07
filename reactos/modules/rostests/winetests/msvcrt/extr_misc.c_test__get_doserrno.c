
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EINVAL ;
 int ERROR_INVALID_CMM ;
 int _doserrno ;
 int errno ;
 int ok (int,char*,int) ;
 int p_get_doserrno (int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__get_doserrno(void)
{
    int ret, out;

    if (!p_get_doserrno)
    {
        win_skip("_get_doserrno is not available\n");
        return;
    }

    _doserrno = ERROR_INVALID_CMM;
    errno = EBADF;
    ret = p_get_doserrno(((void*)0));
    ok(ret == EINVAL, "Expected _get_doserrno to return EINVAL, got %d\n", ret);
    ok(_doserrno == ERROR_INVALID_CMM, "Expected _doserrno to be ERROR_INVALID_CMM, got %d\n", _doserrno);
    ok(errno == EBADF, "Expected errno to be EBADF, got %d\n", errno);

    _doserrno = ERROR_INVALID_CMM;
    errno = EBADF;
    out = 0xdeadbeef;
    ret = p_get_doserrno(&out);
    ok(ret == 0, "Expected _get_doserrno to return 0, got %d\n", ret);
    ok(out == ERROR_INVALID_CMM, "Expected output variable to be ERROR_INVALID_CMM, got %d\n", out);
}
