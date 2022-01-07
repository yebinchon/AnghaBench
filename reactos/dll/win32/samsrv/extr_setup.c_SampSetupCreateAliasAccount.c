
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* ULONG ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int NTSTATUS ;
typedef int LPVOID ;
typedef char* LPCWSTR ;
typedef int * HANDLE ;


 int KEY_ALL_ACCESS ;
 int NT_SUCCESS (int ) ;
 int REG_BINARY ;
 int REG_DWORD ;
 int REG_SZ ;
 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;
 int SampCreateAliasSD (int **,char**) ;
 int SampRegCloseKey (int **) ;
 int SampRegCreateKey (int *,int *,int ,int **) ;
 int SampRegDeleteKey (int *,int *) ;
 int SampRegOpenKey (int *,char*,int ,int **) ;
 int SampRegSetValue (int *,char*,int ,int ,...) ;
 int swprintf (int *,char*,char*) ;
 int wcslen (char*) ;

__attribute__((used)) static
NTSTATUS
SampSetupCreateAliasAccount(HANDLE hDomainKey,
                            LPCWSTR lpAccountName,
                            LPCWSTR lpDescription,
                            ULONG ulRelativeId)
{
    WCHAR szAccountKeyName[32];
    HANDLE hAccountKey = ((void*)0);
    HANDLE hNamesKey = ((void*)0);
    PSECURITY_DESCRIPTOR Sd = ((void*)0);
    ULONG SdSize = 0;
    NTSTATUS Status;

    swprintf(szAccountKeyName, L"Aliases\\%08lX", ulRelativeId);

    Status = SampRegCreateKey(hDomainKey,
                              szAccountKeyName,
                              KEY_ALL_ACCESS,
                              &hAccountKey);
    if (!NT_SUCCESS(Status))
        return Status;

    Status = SampRegSetValue(hAccountKey,
                             L"Name",
                             REG_SZ,
                             (LPVOID)lpAccountName,
                             (wcslen(lpAccountName) + 1) * sizeof(WCHAR));
    if (!NT_SUCCESS(Status))
        goto done;

    Status = SampRegSetValue(hAccountKey,
                             L"Description",
                             REG_SZ,
                             (LPVOID)lpDescription,
                             (wcslen(lpDescription) + 1) * sizeof(WCHAR));
    if (!NT_SUCCESS(Status))
        goto done;


    Status = SampCreateAliasSD(&Sd,
                               &SdSize);
    if (!NT_SUCCESS(Status))
        goto done;


    Status = SampRegSetValue(hAccountKey,
                             L"SecDesc",
                             REG_BINARY,
                             Sd,
                             SdSize);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = SampRegOpenKey(hDomainKey,
                            L"Aliases\\Names",
                            KEY_ALL_ACCESS,
                            &hNamesKey);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = SampRegSetValue(hNamesKey,
                            lpAccountName,
                            REG_DWORD,
                            (LPVOID)&ulRelativeId,
                            sizeof(ULONG));

done:
    SampRegCloseKey(&hNamesKey);

    if (Sd != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, Sd);

    if (hAccountKey != ((void*)0))
    {
        SampRegCloseKey(&hAccountKey);

        if (!NT_SUCCESS(Status))
            SampRegDeleteKey(hDomainKey,
                             szAccountKeyName);
    }

    return Status;
}
