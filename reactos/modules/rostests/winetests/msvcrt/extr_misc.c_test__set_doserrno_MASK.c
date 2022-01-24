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
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_INVALID_CMM ; 
 int _doserrno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int ret;

    if (!&p_set_doserrno)
    {
        FUNC2("_set_doserrno is not available\n");
        return;
    }

    _doserrno = ERROR_INVALID_CMM;
    ret = FUNC1(ERROR_FILE_NOT_FOUND);
    FUNC0(ret == 0, "Expected _set_doserrno to return 0, got %d\n", ret);
    FUNC0(_doserrno == ERROR_FILE_NOT_FOUND,
       "Expected _doserrno to be ERROR_FILE_NOT_FOUND, got %d\n", _doserrno);

    _doserrno = ERROR_INVALID_CMM;
    ret = FUNC1(-1);
    FUNC0(ret == 0, "Expected _set_doserrno to return 0, got %d\n", ret);
    FUNC0(_doserrno == -1,
       "Expected _doserrno to be -1, got %d\n", _doserrno);

    _doserrno = ERROR_INVALID_CMM;
    ret = FUNC1(0xdeadbeef);
    FUNC0(ret == 0, "Expected _set_doserrno to return 0, got %d\n", ret);
    FUNC0(_doserrno == 0xdeadbeef,
       "Expected _doserrno to be 0xdeadbeef, got %d\n", _doserrno);
}