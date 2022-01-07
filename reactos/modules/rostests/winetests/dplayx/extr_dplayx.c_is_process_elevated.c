
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
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 int TOKEN_QUERY ;
 int TokenElevationType ;
 scalar_t__ TokenElevationTypeFull ;

__attribute__((used)) static BOOL is_process_elevated(void)
{
    HANDLE token;
    if (OpenProcessToken( GetCurrentProcess(), TOKEN_QUERY, &token ))
    {
        TOKEN_ELEVATION_TYPE type;
        DWORD size;
        BOOL ret;

        ret = GetTokenInformation( token, TokenElevationType, &type, sizeof(type), &size );
        CloseHandle( token );
        return (ret && type == TokenElevationTypeFull);
    }
    return FALSE;
}
