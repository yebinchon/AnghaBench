
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EINVAL ;
 int errno ;
 int ok (int,char*,int) ;
 int p_get_errno (int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__get_errno(void)
{
    int ret, out;

    if (!p_get_errno)
    {
        win_skip("_get_errno is not available\n");
        return;
    }

    errno = EBADF;
    ret = p_get_errno(((void*)0));
    ok(ret == EINVAL, "Expected _get_errno to return EINVAL, got %d\n", ret);
    ok(errno == EBADF, "Expected errno to be EBADF, got %d\n", errno);

    errno = EBADF;
    out = 0xdeadbeef;
    ret = p_get_errno(&out);
    ok(ret == 0, "Expected _get_errno to return 0, got %d\n", ret);
    ok(out == EBADF, "Expected output variable to be EBADF, got %d\n", out);
}
