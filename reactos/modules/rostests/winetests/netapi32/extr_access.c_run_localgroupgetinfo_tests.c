
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int lgrmi3_domainandname; int lgrpi1_comment; int lgrpi1_name; } ;
typedef TYPE_1__* PLOCALGROUP_MEMBERS_INFO_3 ;
typedef TYPE_1__* PLOCALGROUP_INFO_1 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;
typedef scalar_t__ DWORD ;


 int MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_GroupNotFound ;
 scalar_t__ NERR_Success ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pNetApiBufferFree (TYPE_1__*) ;
 scalar_t__ pNetLocalGroupGetInfo (int *,char const*,int,int *) ;
 scalar_t__ pNetLocalGroupGetMembers (int *,char const*,int,int *,int ,scalar_t__*,scalar_t__*,int *) ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void run_localgroupgetinfo_tests(void)
{
    NET_API_STATUS status;
    static const WCHAR admins[] = {'A','d','m','i','n','i','s','t','r','a','t','o','r','s',0};
    PLOCALGROUP_INFO_1 lgi = ((void*)0);
    PLOCALGROUP_MEMBERS_INFO_3 buffer = ((void*)0);
    DWORD entries_read = 0, total_entries =0;
    int i;

    status = pNetLocalGroupGetInfo(((void*)0), admins, 1, (LPBYTE *)&lgi);
    ok(status == NERR_Success || broken(status == NERR_GroupNotFound),
       "NetLocalGroupGetInfo unexpectedly returned %d\n", status);
    if (status != NERR_Success) return;

    trace("Local groupname:%s\n", wine_dbgstr_w( lgi->lgrpi1_name));
    trace("Comment: %s\n", wine_dbgstr_w( lgi->lgrpi1_comment));

    pNetApiBufferFree(lgi);

    status = pNetLocalGroupGetMembers(((void*)0), admins, 3, (LPBYTE *)&buffer, MAX_PREFERRED_LENGTH, &entries_read, &total_entries, ((void*)0));
    ok(status == NERR_Success, "NetLocalGroupGetMembers unexpectedly returned %d\n", status);
    ok(entries_read > 0 && total_entries > 0, "Amount of entries is unexpectedly 0\n");

    for(i=0;i<entries_read;i++)
        trace("domain and name: %s\n", wine_dbgstr_w(buffer[i].lgrmi3_domainandname));

    pNetApiBufferFree(buffer);
}
