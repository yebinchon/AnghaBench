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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,unsigned char*) ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int RPC_S_INVALID_STRING_UUID ; 
 int /*<<< orphan*/  RPC_S_NOT_RPC_ERROR ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5 (void)
{
    char bufferInvalid [1024];
    char buffer [1024]; /* The required size is not documented but would
                         * appear to be 256.
                         */
    DWORD dwCount;

    dwCount = FUNC2(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS, NULL,
            RPC_S_NOT_RPC_ERROR, 0, bufferInvalid, FUNC0(bufferInvalid), NULL);

    /* A random sample of DceErrorInqText */
    /* 0 is success */
    FUNC3 ((FUNC1 (0, (unsigned char*)buffer) == RPC_S_OK),
            "DceErrorInqTextA(0...)\n");
    /* A real RPC_S error */
    FUNC3 ((FUNC1 (RPC_S_INVALID_STRING_UUID, (unsigned char*)buffer) == RPC_S_OK),
            "DceErrorInqTextA(valid...)\n");

    if (dwCount)
    {
        /* A message for which FormatMessage should fail
         * which should return RPC_S_OK and the 
         * fixed "not valid" message
         */
        FUNC3 ((FUNC1 (35, (unsigned char*)buffer) == RPC_S_OK &&
                    FUNC4 (buffer, bufferInvalid) == 0),
                "DceErrorInqTextA(unformattable...)\n");
        /* One for which FormatMessage should succeed but 
         * DceErrorInqText should "fail"
         * 3814 is generally quite a long message
         */
        FUNC3 ((FUNC1 (3814, (unsigned char*)buffer) == RPC_S_OK &&
                    FUNC4 (buffer, bufferInvalid) == 0),
                "DceErrorInqTextA(deviation...)\n");
    }
    else
        FUNC3 (0, "Cannot set up for DceErrorInqText\n");
}