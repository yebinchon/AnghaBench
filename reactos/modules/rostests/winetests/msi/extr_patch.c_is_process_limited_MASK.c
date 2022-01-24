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
typedef  int /*<<< orphan*/  type ;
typedef  scalar_t__ TOKEN_ELEVATION_TYPE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenElevationType ; 
 scalar_t__ TokenElevationTypeDefault ; 
 scalar_t__ TokenElevationTypeLimited ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC4(void)
{
    HANDLE token;

    if (!&pOpenProcessToken) return FALSE;

    if (FUNC3(FUNC1(), TOKEN_QUERY, &token))
    {
        BOOL ret;
        TOKEN_ELEVATION_TYPE type = TokenElevationTypeDefault;
        DWORD size;

        ret = FUNC2(token, TokenElevationType, &type, sizeof(type), &size);
        FUNC0(token);
        return (ret && type == TokenElevationTypeLimited);
    }
    return FALSE;
}