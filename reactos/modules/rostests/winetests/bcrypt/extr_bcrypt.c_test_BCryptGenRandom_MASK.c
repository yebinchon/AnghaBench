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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int BCRYPT_RNG_USE_ENTROPY_IN_BUFFER ; 
 int BCRYPT_USE_SYSTEM_PREFERRED_RNG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ STATUS_INVALID_HANDLE ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    NTSTATUS ret;
    UCHAR buffer[256];

    ret = FUNC0(NULL, NULL, 0, 0);
    FUNC3(ret == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got 0x%x\n", ret);
    ret = FUNC0(NULL, buffer, 0, 0);
    FUNC3(ret == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got 0x%x\n", ret);
    ret = FUNC0(NULL, buffer, sizeof(buffer), 0);
    FUNC3(ret == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got 0x%x\n", ret);
    ret = FUNC0(NULL, buffer, sizeof(buffer), BCRYPT_USE_SYSTEM_PREFERRED_RNG);
    FUNC3(ret == STATUS_SUCCESS, "Expected success, got 0x%x\n", ret);
    ret = FUNC0(NULL, buffer, sizeof(buffer),
          BCRYPT_USE_SYSTEM_PREFERRED_RNG|BCRYPT_RNG_USE_ENTROPY_IN_BUFFER);
    FUNC3(ret == STATUS_SUCCESS, "Expected success, got 0x%x\n", ret);
    ret = FUNC0(NULL, NULL, sizeof(buffer), BCRYPT_USE_SYSTEM_PREFERRED_RNG);
    FUNC3(ret == STATUS_INVALID_PARAMETER, "Expected STATUS_INVALID_PARAMETER, got 0x%x\n", ret);

    /* Zero sized buffer should work too */
    ret = FUNC0(NULL, buffer, 0, BCRYPT_USE_SYSTEM_PREFERRED_RNG);
    FUNC3(ret == STATUS_SUCCESS, "Expected success, got 0x%x\n", ret);

    /* Test random number generation - It's impossible for a sane RNG to return 8 zeros */
    FUNC2(buffer, 0, 16);
    ret = FUNC0(NULL, buffer, 8, BCRYPT_USE_SYSTEM_PREFERRED_RNG);
    FUNC3(ret == STATUS_SUCCESS, "Expected success, got 0x%x\n", ret);
    FUNC3(FUNC1(buffer, buffer + 8, 8), "Expected a random number, got 0\n");
}