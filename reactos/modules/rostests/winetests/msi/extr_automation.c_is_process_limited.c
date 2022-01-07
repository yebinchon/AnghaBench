
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type ;
struct TYPE_3__ {int member_0; } ;
typedef scalar_t__ TOKEN_ELEVATION_TYPE ;
typedef TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef int * PSID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int AllocateAndInitializeSid (TYPE_1__*,int,int ,int ,int ,int ,int ,int ,int ,int ,int **) ;
 int CloseHandle (int ) ;
 int DOMAIN_ALIAS_RID_ADMINS ;
 int FALSE ;
 int FreeSid (int *) ;
 int GetCurrentProcess () ;
 int GetTokenInformation (int ,int ,scalar_t__*,int,int *) ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_NT_AUTHORITY ;
 int TOKEN_QUERY ;
 int TRUE ;
 int TokenElevationType ;
 scalar_t__ TokenElevationTypeDefault ;
 scalar_t__ TokenElevationTypeLimited ;
 int pCheckTokenMembership (int *,int *,int*) ;
 scalar_t__ pOpenProcessToken (int ,int ,int *) ;
 int trace (char*) ;

__attribute__((used)) static BOOL is_process_limited(void)
{
    SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};
    PSID Group = ((void*)0);
    BOOL IsInGroup;
    HANDLE token;

    if (!pCheckTokenMembership || !pOpenProcessToken) return FALSE;

    if (!AllocateAndInitializeSid(&NtAuthority, 2, SECURITY_BUILTIN_DOMAIN_RID,
                                  DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &Group) ||
        !pCheckTokenMembership(((void*)0), Group, &IsInGroup))
    {
        trace("Could not check if the current user is an administrator\n");
        FreeSid(Group);
        return FALSE;
    }
    FreeSid(Group);

    if (!IsInGroup)
    {

        return TRUE;
    }

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
