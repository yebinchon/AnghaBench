
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Sid; } ;
struct TYPE_7__ {TYPE_1__ User; } ;
typedef TYPE_2__ TOKEN_USER ;
typedef int HANDLE ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int GetCurrentProcess () ;
 int GetProcessHeap () ;
 int GetTokenInformation (int ,int ,TYPE_2__*,int ,int *) ;
 TYPE_2__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int OpenProcessToken (int ,int ,int *) ;
 int TOKEN_QUERY ;
 int TokenUser ;
 int pConvertSidToStringSidA (int ,char**) ;
 int win_skip (char*) ;

__attribute__((used)) static char *get_user_sid(void)
{
    HANDLE token;
    DWORD size = 0;
    TOKEN_USER *user;
    char *usersid = ((void*)0);

    if (!pConvertSidToStringSidA)
    {
        win_skip("ConvertSidToStringSidA is not available\n");
        return ((void*)0);
    }
    OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &token);
    GetTokenInformation(token, TokenUser, ((void*)0), size, &size);

    user = HeapAlloc(GetProcessHeap(), 0, size);
    GetTokenInformation(token, TokenUser, user, size, &size);
    pConvertSidToStringSidA(user->User.Sid, &usersid);
    HeapFree(GetProcessHeap(), 0, user);

    CloseHandle(token);
    return usersid;
}
