
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef scalar_t__ TOKEN_ELEVATION_TYPE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetTokenInformation (int ,int ,scalar_t__*,int,int *) ;
 int TOKEN_QUERY ;
 int TokenElevationType ;
 scalar_t__ TokenElevationTypeDefault ;
 scalar_t__ TokenElevationTypeLimited ;
 scalar_t__ pOpenProcessToken (int ,int ,int *) ;

__attribute__((used)) static BOOL is_process_limited(void)
{
    HANDLE token;

    if (!pOpenProcessToken) return FALSE;

    if (pOpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &token))
    {
        BOOL ret;
        TOKEN_ELEVATION_TYPE type = TokenElevationTypeDefault;
        DWORD size;

        ret = GetTokenInformation(token, TokenElevationType, &type, sizeof(type), &size);
        CloseHandle(token);
        return (ret && type == TokenElevationTypeLimited);
    }
    return FALSE;
}
