
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* ULONG ;
typedef scalar_t__ PSID ;
typedef char* LPWSTR ;
typedef int LPVOID ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int ConvertSidToStringSidW (scalar_t__,char**) ;
 int KEY_ALL_ACCESS ;
 int LocalFree (char*) ;
 int REG_BINARY ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 int RegSetValueEx (int ,char*,int ,int ,int ,int ) ;
 int RtlLengthSid (scalar_t__) ;
 int TRUE ;
 int swprintf (char*,char*,char*) ;

__attribute__((used)) static BOOL
SampSetupAddMemberToAlias(HKEY hDomainKey,
                          ULONG AliasId,
                          PSID MemberSid)
{
    DWORD dwDisposition;
    LPWSTR MemberSidString = ((void*)0);
    WCHAR szKeyName[256];
    HKEY hMembersKey;

    ConvertSidToStringSidW(MemberSid, &MemberSidString);

    swprintf(szKeyName, L"Aliases\\%08lX\\Members", AliasId);

    if (!RegCreateKeyExW(hDomainKey,
                         szKeyName,
                         0,
                         ((void*)0),
                         REG_OPTION_NON_VOLATILE,
                         KEY_ALL_ACCESS,
                         ((void*)0),
                         &hMembersKey,
                         &dwDisposition))
    {
        RegSetValueEx(hMembersKey,
                      MemberSidString,
                      0,
                      REG_BINARY,
                      (LPVOID)MemberSid,
                      RtlLengthSid(MemberSid));

        RegCloseKey(hMembersKey);
    }

    swprintf(szKeyName, L"Aliases\\Members\\%s", MemberSidString);

    if (!RegCreateKeyExW(hDomainKey,
                         szKeyName,
                         0,
                         ((void*)0),
                         REG_OPTION_NON_VOLATILE,
                         KEY_ALL_ACCESS,
                         ((void*)0),
                         &hMembersKey,
                         &dwDisposition))
    {
        swprintf(szKeyName, L"%08lX", AliasId);

        RegSetValueEx(hMembersKey,
                      szKeyName,
                      0,
                      REG_BINARY,
                      (LPVOID)MemberSid,
                      RtlLengthSid(MemberSid));

        RegCloseKey(hMembersKey);
    }

    if (MemberSidString != ((void*)0))
        LocalFree(MemberSidString);

    return TRUE;
}
