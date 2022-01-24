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
typedef  int /*<<< orphan*/  PCHAR ;
typedef  scalar_t__ LSTATUS ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
LSTATUS
FUNC3(PCHAR ValueName)
{
    INT ErrorCode;
    HKEY ParametersKey;

    /* Open the database path key */
    ErrorCode = FUNC2(HKEY_LOCAL_MACHINE,
                              "System\\CurrentControlSet\\Services\\Tcpip\\Parameters",
                              0,
                              KEY_WRITE,
                              &ParametersKey);
    if (ErrorCode == NO_ERROR)
    {
        /* Read the actual path */
        ErrorCode = FUNC1(ParametersKey, ValueName);

        /* Close the key */
        FUNC0(ParametersKey);
    }
    return ErrorCode;
}