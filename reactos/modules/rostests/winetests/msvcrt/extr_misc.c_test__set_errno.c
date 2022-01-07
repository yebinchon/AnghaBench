
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EINVAL ;
 int errno ;
 int ok (int,char*,int) ;
 int p_set_errno (int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__set_errno(void)
{
    int ret;

    if (!p_set_errno)
    {
        win_skip("_set_errno is not available\n");
        return;
    }

    errno = EBADF;
    ret = p_set_errno(EINVAL);
    ok(ret == 0, "Expected _set_errno to return 0, got %d\n", ret);
    ok(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = p_set_errno(-1);
    ok(ret == 0, "Expected _set_errno to return 0, got %d\n", ret);
    ok(errno == -1, "Expected errno to be -1, got %d\n", errno);

    errno = EBADF;
    ret = p_set_errno(0xdeadbeef);
    ok(ret == 0, "Expected _set_errno to return 0, got %d\n", ret);
    ok(errno == 0xdeadbeef, "Expected errno to be 0xdeadbeef, got %d\n", errno);
}
