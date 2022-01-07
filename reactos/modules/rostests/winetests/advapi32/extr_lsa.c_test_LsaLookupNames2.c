
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int n2 ;
typedef int n1 ;
typedef int attrs ;
typedef char WCHAR ;
struct TYPE_13__ {int Length; } ;
struct TYPE_12__ {int Length; int MaximumLength; void* Buffer; } ;
struct TYPE_11__ {int Use; int Flags; int Entries; int DomainIndex; int Sid; } ;
typedef TYPE_1__* PLSA_TRANSLATED_SID2 ;
typedef TYPE_1__* PLSA_REFERENCED_DOMAIN_LIST ;
typedef int NTSTATUS ;
typedef TYPE_3__ LSA_UNICODE_STRING ;
typedef TYPE_4__ LSA_OBJECT_ATTRIBUTES ;
typedef int LSA_HANDLE ;
typedef int LPSTR ;


 int GetProcessHeap () ;
 int GetSystemDefaultLCID () ;
 int GetThreadLocale () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 int LANGIDFROMLCID (int ) ;
 scalar_t__ LANG_ENGLISH ;
 int LsaClose (int ) ;
 int LsaFreeMemory (TYPE_1__*) ;
 int LsaLookupNames2 (int ,int ,int,TYPE_3__*,TYPE_1__**,TYPE_1__**) ;
 int LsaOpenPolicy (int *,TYPE_4__*,int ,int *) ;
 int POLICY_ALL_ACCESS ;
 int POLICY_LOOKUP_NAMES ;
 scalar_t__ PRIMARYLANGID (int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_NONE_MAPPED ;
 int STATUS_SOME_NOT_MAPPED ;
 int STATUS_SUCCESS ;
 int SidTypeUnknown ;
 int SidTypeWellKnownGroup ;
 int get_sid_info (int ,int*,int*) ;
 int memcpy (void*,char const*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int ok (int,char*,int) ;
 int skip (char*) ;
 int strcmp (int,char*) ;
 int trace (char*) ;

__attribute__((used)) static void test_LsaLookupNames2(void)
{
    static const WCHAR n1[] = {'L','O','C','A','L',' ','S','E','R','V','I','C','E'};
    static const WCHAR n2[] = {'N','T',' ','A','U','T','H','O','R','I','T','Y','\\','L','o','c','a','l','S','e','r','v','i','c','e'};

    NTSTATUS status;
    LSA_HANDLE handle;
    LSA_OBJECT_ATTRIBUTES attrs;
    PLSA_REFERENCED_DOMAIN_LIST domains;
    PLSA_TRANSLATED_SID2 sids;
    LSA_UNICODE_STRING name[3];
    LPSTR account, sid_dom;

    if ((PRIMARYLANGID(LANGIDFROMLCID(GetSystemDefaultLCID())) != LANG_ENGLISH) ||
        (PRIMARYLANGID(LANGIDFROMLCID(GetThreadLocale())) != LANG_ENGLISH))
    {
        skip("Non-English locale (skipping LsaLookupNames2 tests)\n");
        return;
    }

    memset(&attrs, 0, sizeof(attrs));
    attrs.Length = sizeof(attrs);

    status = LsaOpenPolicy(((void*)0), &attrs, POLICY_ALL_ACCESS, &handle);
    ok(status == STATUS_SUCCESS || status == STATUS_ACCESS_DENIED,
       "LsaOpenPolicy(POLICY_ALL_ACCESS) returned 0x%08x\n", status);


    if (status == STATUS_ACCESS_DENIED)
    {
        trace("LsaOpenPolicy(POLICY_ALL_ACCESS) failed, trying POLICY_VIEW_LOCAL_INFORMATION\n");
        status = LsaOpenPolicy(((void*)0), &attrs, POLICY_LOOKUP_NAMES, &handle);
        ok(status == STATUS_SUCCESS, "LsaOpenPolicy(POLICY_VIEW_LOCAL_INFORMATION) returned 0x%08x\n", status);
    }
    if (status != STATUS_SUCCESS)
    {
        skip("Cannot acquire policy handle\n");
        return;
    }

    name[0].Buffer = HeapAlloc(GetProcessHeap(), 0, sizeof(n1));
    name[0].Length = name[0].MaximumLength = sizeof(n1);
    memcpy(name[0].Buffer, n1, sizeof(n1));

    name[1].Buffer = HeapAlloc(GetProcessHeap(), 0, sizeof(n1));
    name[1].Length = name[1].MaximumLength = sizeof(n1) - sizeof(WCHAR);
    memcpy(name[1].Buffer, n1, sizeof(n1) - sizeof(WCHAR));

    name[2].Buffer = HeapAlloc(GetProcessHeap(), 0, sizeof(n2));
    name[2].Length = name[2].MaximumLength = sizeof(n2);
    memcpy(name[2].Buffer, n2, sizeof(n2));


    sids = ((void*)0);
    domains = ((void*)0);
    status = LsaLookupNames2(handle, 0, 1, &name[0], &domains, &sids);
    ok(status == STATUS_SUCCESS, "expected STATUS_SUCCESS, got %x)\n", status);
    ok(sids[0].Use == SidTypeWellKnownGroup, "expected SidTypeWellKnownGroup, got %u\n", sids[0].Use);
    ok(sids[0].Flags == 0, "expected 0, got 0x%08x\n", sids[0].Flags);
    ok(domains->Entries == 1, "expected 1, got %u\n", domains->Entries);
    get_sid_info(sids[0].Sid, &account, &sid_dom);
    ok(!strcmp(account, "LOCAL SERVICE"), "expected \"LOCAL SERVICE\", got \"%s\"\n", account);
    ok(!strcmp(sid_dom, "NT AUTHORITY"), "expected \"NT AUTHORITY\", got \"%s\"\n", sid_dom);
    LsaFreeMemory(sids);
    LsaFreeMemory(domains);


    sids = ((void*)0);
    domains = ((void*)0);
    status = LsaLookupNames2(handle, 0, 1, &name[1], &domains, &sids);
    ok(status == STATUS_NONE_MAPPED, "expected STATUS_NONE_MAPPED, got %x)\n", status);
    ok(sids[0].Use == SidTypeUnknown, "expected SidTypeUnknown, got %u\n", sids[0].Use);
    ok(sids[0].Flags == 0, "expected 0, got 0x%08x\n", sids[0].Flags);
    ok(domains->Entries == 0, "expected 0, got %u\n", domains->Entries);
    LsaFreeMemory(sids);
    LsaFreeMemory(domains);


    sids = ((void*)0);
    domains = ((void*)0);
    status = LsaLookupNames2(handle, 0, 1, &name[2], &domains, &sids);
    ok(status == STATUS_SUCCESS, "expected STATUS_SUCCESS, got %x)\n", status);
    ok(sids[0].Use == SidTypeWellKnownGroup, "expected SidTypeWellKnownGroup, got %u\n", sids[0].Use);
    ok(sids[0].Flags == 0, "expected 0, got 0x%08x\n", sids[0].Flags);
    ok(domains->Entries == 1, "expected 1, got %u\n", domains->Entries);
    get_sid_info(sids[0].Sid, &account, &sid_dom);
    ok(!strcmp(account, "LOCAL SERVICE"), "expected \"LOCAL SERVICE\", got \"%s\"\n", account);
    ok(!strcmp(sid_dom, "NT AUTHORITY"), "expected \"NT AUTHORITY\", got \"%s\"\n", sid_dom);
    LsaFreeMemory(sids);
    LsaFreeMemory(domains);


    sids = ((void*)0);
    domains = ((void*)0);
    status = LsaLookupNames2(handle, 0, 3, name, &domains, &sids);
    ok(status == STATUS_SOME_NOT_MAPPED, "expected STATUS_SOME_NOT_MAPPED, got %x)\n", status);
    ok(sids[0].Use == SidTypeWellKnownGroup, "expected SidTypeWellKnownGroup, got %u\n", sids[0].Use);
    ok(sids[1].Use == SidTypeUnknown, "expected SidTypeUnknown, got %u\n", sids[1].Use);
    ok(sids[2].Use == SidTypeWellKnownGroup, "expected SidTypeWellKnownGroup, got %u\n", sids[2].Use);
    ok(sids[0].DomainIndex == 0, "expected 0, got %u\n", sids[0].DomainIndex);
    ok(domains->Entries == 1, "expected 1, got %u\n", domains->Entries);
    LsaFreeMemory(sids);
    LsaFreeMemory(domains);

    HeapFree(GetProcessHeap(), 0, name[0].Buffer);
    HeapFree(GetProcessHeap(), 0, name[1].Buffer);
    HeapFree(GetProcessHeap(), 0, name[2].Buffer);

    status = LsaClose(handle);
    ok(status == STATUS_SUCCESS, "LsaClose() failed, returned 0x%08x\n", status);
}
