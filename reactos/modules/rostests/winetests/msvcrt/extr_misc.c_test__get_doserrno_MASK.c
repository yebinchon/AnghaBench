#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ERROR_INVALID_CMM ; 
 int _doserrno ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int ret, out;

    if (!&p_get_doserrno)
    {
        FUNC2("_get_doserrno is not available\n");
        return;
    }

    _doserrno = ERROR_INVALID_CMM;
    errno = EBADF;
    ret = FUNC1(NULL);
    FUNC0(ret == EINVAL, "Expected _get_doserrno to return EINVAL, got %d\n", ret);
    FUNC0(_doserrno == ERROR_INVALID_CMM, "Expected _doserrno to be ERROR_INVALID_CMM, got %d\n", _doserrno);
    FUNC0(errno == EBADF, "Expected errno to be EBADF, got %d\n", errno);

    _doserrno = ERROR_INVALID_CMM;
    errno = EBADF;
    out = 0xdeadbeef;
    ret = FUNC1(&out);
    FUNC0(ret == 0, "Expected _get_doserrno to return 0, got %d\n", ret);
    FUNC0(out == ERROR_INVALID_CMM, "Expected output variable to be ERROR_INVALID_CMM, got %d\n", out);
}