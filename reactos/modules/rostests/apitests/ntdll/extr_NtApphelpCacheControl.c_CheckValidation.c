
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {scalar_t__ ImageHandle; int ImageName; TYPE_1__ member_0; } ;
typedef int NTSTATUS ;
typedef scalar_t__ HANDLE ;
typedef TYPE_2__ APPHELP_CACHE_SERVICE_LOOKUP ;


 int ApphelpCacheServiceDump ;
 int ApphelpCacheServiceLookup ;
 int ApphelpCacheServiceRemove ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int ok_ntstatus (int ,int ) ;
 int pNtApphelpCacheControl (int,TYPE_2__*) ;

void CheckValidation(UNICODE_STRING* PathName)
{
    APPHELP_CACHE_SERVICE_LOOKUP CacheEntry = { {0} };
    NTSTATUS Status;


    Status = pNtApphelpCacheControl(ApphelpCacheServiceRemove, ((void*)0));
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER);
    Status = pNtApphelpCacheControl(ApphelpCacheServiceLookup, ((void*)0));
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER);


    Status = pNtApphelpCacheControl(ApphelpCacheServiceRemove, &CacheEntry);
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER);
    Status = pNtApphelpCacheControl(ApphelpCacheServiceLookup, &CacheEntry);
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER);


    Status = pNtApphelpCacheControl(ApphelpCacheServiceDump, ((void*)0));
    ok_ntstatus(Status, STATUS_SUCCESS);


    CacheEntry.ImageName = *PathName;
    CacheEntry.ImageHandle = (HANDLE)2;
    Status = pNtApphelpCacheControl(ApphelpCacheServiceLookup, &CacheEntry);
    ok_ntstatus(Status, STATUS_NOT_FOUND);


    Status = pNtApphelpCacheControl(999, ((void*)0));
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER);
    Status = pNtApphelpCacheControl(999, &CacheEntry);
    ok_ntstatus(Status, STATUS_INVALID_PARAMETER);
}
