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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  Env ;
typedef  int /*<<< orphan*/  Data ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    char Data[1024];
    DWORD DataSize;
    char Env[sizeof(Data)];
    DWORD EnvSize;
    HANDLE Token;
    BOOL NoErr;

    /*
     * Check value of %USERPROFILE%, should be same as GetUserProfileDirectory()
     * If this fails, your test environment is probably not set up
     */
    if (&pOpenProcessToken == NULL || &pGetUserProfileDirectoryA == NULL)
    {
        FUNC7("Skipping USERPROFILE check\n");
        return;
    }
    NoErr = FUNC6(FUNC1(), TOKEN_QUERY, &Token);
    FUNC4(NoErr, "Failed to open token, error %u\n", FUNC3());
    DataSize = sizeof(Data);
    NoErr = FUNC5(Token, Data, &DataSize);
    FUNC4(NoErr, "Failed to get user profile dir, error %u\n", FUNC3());
    if (NoErr)
    {
        EnvSize = FUNC2("USERPROFILE", Env, sizeof(Env));
        FUNC4(EnvSize != 0 && EnvSize <= sizeof(Env),
           "Failed to retrieve environment variable USERPROFILE, error %u\n",
           FUNC3());
        FUNC4(FUNC8(Data, Env) == 0,
           "USERPROFILE env var %s doesn't match GetUserProfileDirectory %s\n",
           Env, Data);
    }
    else
        FUNC7("Skipping USERPROFILE check, can't get user profile dir\n");
    NoErr = FUNC0(Token);
    FUNC4(NoErr, "Failed to close token, error %u\n", FUNC3());
}