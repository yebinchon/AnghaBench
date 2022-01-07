
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int szPath ;
typedef int WCHAR ;
struct TYPE_8__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_9__ {void* ImageHandle; TYPE_1__ ImageName; } ;
typedef int SC_HANDLE ;
typedef int NTSTATUS ;
typedef void* HANDLE ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_2__ APPHELP_CACHE_SERVICE_LOOKUP ;


 int ApphelpCacheServiceLookup ;
 int CallCacheControl (TYPE_1__*,scalar_t__,int ) ;
 int CheckValidation (TYPE_1__*) ;
 scalar_t__ FALSE ;
 int GetModuleFileNameW (int *,int *,int) ;
 int InitEnv (TYPE_1__*) ;
 int MAX_PATH ;
 int RequestAddition (int ,scalar_t__) ;
 scalar_t__ RtlDosPathNameToNtPathName_U (int *,TYPE_1__*,int *,int *) ;
 int RtlFreeHeap (int ,int ,int ) ;
 int RtlGetProcessHeap () ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;
 int ok_ntstatus (int ,int ) ;
 int pNtApphelpCacheControl (int ,TYPE_2__*) ;
 int skip (char*) ;

__attribute__((used)) static void RunApphelpCacheControlTests(SC_HANDLE service_handle)
{
    WCHAR szPath[MAX_PATH];
    UNICODE_STRING ntPath;
    BOOLEAN Result;
    NTSTATUS Status;
    APPHELP_CACHE_SERVICE_LOOKUP CacheEntry;

    GetModuleFileNameW(((void*)0), szPath, sizeof(szPath) / sizeof(szPath[0]));
    Result = RtlDosPathNameToNtPathName_U(szPath, &ntPath, ((void*)0), ((void*)0));
    ok(Result == TRUE, "RtlDosPathNameToNtPathName_U\n");
    if (!InitEnv(&ntPath))
    {
        skip("NtApphelpCacheControl expects a different structure layout\n");
        return;
    }


    CheckValidation(&ntPath);


    Status = CallCacheControl(&ntPath, TRUE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_NOT_FOUND);
    Status = CallCacheControl(&ntPath, FALSE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_NOT_FOUND);


    RequestAddition(service_handle, FALSE);


    Status = CallCacheControl(&ntPath, FALSE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_SUCCESS);

    Status = CallCacheControl(&ntPath, TRUE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_NOT_FOUND);

    Status = CallCacheControl(&ntPath, FALSE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_NOT_FOUND);



    RequestAddition(service_handle, TRUE);


    Status = CallCacheControl(&ntPath, TRUE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_SUCCESS);
    Status = CallCacheControl(&ntPath, FALSE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_SUCCESS);



    CacheEntry.ImageName = ntPath;
    CacheEntry.ImageHandle = 0;
    Status = pNtApphelpCacheControl(ApphelpCacheServiceLookup, &CacheEntry);
    ok_ntstatus(Status, STATUS_NOT_FOUND);


    RequestAddition(service_handle, TRUE);
    Status = CallCacheControl(&ntPath, TRUE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_SUCCESS);
    CacheEntry.ImageHandle = (HANDLE)1;
    Status = pNtApphelpCacheControl(ApphelpCacheServiceLookup, &CacheEntry);
    ok_ntstatus(Status, STATUS_NOT_FOUND);


    RequestAddition(service_handle, TRUE);
    Status = CallCacheControl(&ntPath, TRUE, ApphelpCacheServiceLookup);
    ok_ntstatus(Status, STATUS_SUCCESS);



    CacheEntry.ImageHandle = (HANDLE)0x80000000;

    Status = pNtApphelpCacheControl(ApphelpCacheServiceLookup, &CacheEntry);
    ok_ntstatus(Status, STATUS_NOT_FOUND);

    RtlFreeHeap(RtlGetProcessHeap(), 0, ntPath.Buffer);
}
