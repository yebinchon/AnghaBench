
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SID_NAME_USE ;
typedef int PSID ;
typedef char* LPSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int GetLastError () ;
 int LookupAccountSidA (int *,int ,char*,int*,char*,int*,int *) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void get_sid_info(PSID psid, LPSTR *user, LPSTR *dom)
{
    static char account[257], domain[257];
    DWORD user_size, dom_size;
    SID_NAME_USE use;
    BOOL ret;

    *user = account;
    *dom = domain;

    user_size = dom_size = 257;
    account[0] = domain[0] = 0;
    ret = LookupAccountSidA(((void*)0), psid, account, &user_size, domain, &dom_size, &use);
    ok(ret, "LookupAccountSidA failed %u\n", GetLastError());
}
