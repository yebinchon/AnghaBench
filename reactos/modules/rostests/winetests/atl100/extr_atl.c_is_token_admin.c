
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_8__ {int Sid; } ;
typedef TYPE_2__ SID_IDENTIFIER_AUTHORITY ;
typedef TYPE_3__* PTOKEN_GROUPS ;
typedef int * PSID ;
typedef int HANDLE ;
typedef size_t DWORD ;
typedef int BOOL ;


 int AllocateAndInitializeSid (TYPE_2__*,int,int ,int ,int ,int ,int ,int ,int ,int ,int **) ;
 int DOMAIN_ALIAS_RID_ADMINS ;
 scalar_t__ EqualSid (int ,int *) ;
 int FALSE ;
 int FreeSid (int *) ;
 int GetProcessHeap () ;
 int GetTokenInformation (int ,int ,TYPE_3__*,size_t,size_t*) ;
 TYPE_3__* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_NT_AUTHORITY ;
 int TRUE ;
 int TokenGroups ;

__attribute__((used)) static BOOL is_token_admin(HANDLE token)
{
    PSID administrators = ((void*)0);
    SID_IDENTIFIER_AUTHORITY nt_authority = { SECURITY_NT_AUTHORITY };
    DWORD groups_size;
    PTOKEN_GROUPS groups;
    DWORD group_index;


    if (! AllocateAndInitializeSid(&nt_authority, 2, SECURITY_BUILTIN_DOMAIN_RID,
                                   DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0,
                                   &administrators))
        return FALSE;


    groups_size = 0;
    GetTokenInformation(token, TokenGroups, ((void*)0), 0, &groups_size);
    groups = HeapAlloc(GetProcessHeap(), 0, groups_size);
    if (groups == ((void*)0))
    {
        FreeSid(administrators);
        return FALSE;
    }
    if (! GetTokenInformation(token, TokenGroups, groups, groups_size, &groups_size))
    {
        HeapFree(GetProcessHeap(), 0, groups);
        FreeSid(administrators);
        return FALSE;
    }


    for (group_index = 0; group_index < groups->GroupCount; group_index++)
    {
        if (EqualSid(groups->Groups[group_index].Sid, administrators))
        {
            HeapFree(GetProcessHeap(), 0, groups);
            FreeSid(administrators);
            return TRUE;
        }
    }


    HeapFree(GetProcessHeap(), 0, groups);
    FreeSid(administrators);
    return FALSE;
}
