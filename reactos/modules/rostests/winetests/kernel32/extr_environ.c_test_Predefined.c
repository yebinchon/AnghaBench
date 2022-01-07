
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int Env ;
typedef int Data ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int GetCurrentProcess () ;
 int GetEnvironmentVariableA (char*,char*,int) ;
 int GetLastError () ;
 int TOKEN_QUERY ;
 int ok (int,char*,char*,...) ;
 int pGetUserProfileDirectoryA (int ,char*,int*) ;
 int pOpenProcessToken (int ,int ,int *) ;
 int skip (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test_Predefined(void)
{
    char Data[1024];
    DWORD DataSize;
    char Env[sizeof(Data)];
    DWORD EnvSize;
    HANDLE Token;
    BOOL NoErr;





    if (pOpenProcessToken == ((void*)0) || pGetUserProfileDirectoryA == ((void*)0))
    {
        skip("Skipping USERPROFILE check\n");
        return;
    }
    NoErr = pOpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &Token);
    ok(NoErr, "Failed to open token, error %u\n", GetLastError());
    DataSize = sizeof(Data);
    NoErr = pGetUserProfileDirectoryA(Token, Data, &DataSize);
    ok(NoErr, "Failed to get user profile dir, error %u\n", GetLastError());
    if (NoErr)
    {
        EnvSize = GetEnvironmentVariableA("USERPROFILE", Env, sizeof(Env));
        ok(EnvSize != 0 && EnvSize <= sizeof(Env),
           "Failed to retrieve environment variable USERPROFILE, error %u\n",
           GetLastError());
        ok(strcmp(Data, Env) == 0,
           "USERPROFILE env var %s doesn't match GetUserProfileDirectory %s\n",
           Env, Data);
    }
    else
        skip("Skipping USERPROFILE check, can't get user profile dir\n");
    NoErr = CloseHandle(Token);
    ok(NoErr, "Failed to close token, error %u\n", GetLastError());
}
