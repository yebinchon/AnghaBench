#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szPath ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_9__ {void* ImageHandle; TYPE_1__ ImageName; } ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  void* HANDLE ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_2__ APPHELP_CACHE_SERVICE_LOOKUP ;

/* Variables and functions */
 int /*<<< orphan*/  ApphelpCacheServiceLookup ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  STATUS_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(SC_HANDLE service_handle)
{
    WCHAR szPath[MAX_PATH];
    UNICODE_STRING ntPath;
    BOOLEAN Result;
    NTSTATUS Status;
    APPHELP_CACHE_SERVICE_LOOKUP CacheEntry;

    FUNC2(NULL, szPath, sizeof(szPath) / sizeof(szPath[0]));
    Result = FUNC5(szPath, &ntPath, NULL, NULL);
    FUNC8(Result == TRUE, "RtlDosPathNameToNtPathName_U\n");
    if (!FUNC3(&ntPath))
    {
        FUNC11("NtApphelpCacheControl expects a different structure layout\n");
        return;
    }
    /* At this point we have made sure that our binary is not present in the cache,
        and that the NtApphelpCacheControl function expects the struct layout we use. */
    FUNC1(&ntPath);

    /* We expect not to find it */
    Status = FUNC0(&ntPath, TRUE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_NOT_FOUND);
    Status = FUNC0(&ntPath, FALSE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_NOT_FOUND);

    /* First we add our process without a file handle (so it will be registered without file info) */
    FUNC4(service_handle, FALSE);

    /* now we try to find it without validating file info */
    Status = FUNC0(&ntPath, FALSE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_SUCCESS);
    /* when validating file info the cache notices the file is wrong, so it is dropped from the cache */
    Status = FUNC0(&ntPath, TRUE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_NOT_FOUND);
    /* making the second check without info also fail. */
    Status = FUNC0(&ntPath, FALSE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_NOT_FOUND);


    /* Now we add the file with file info */
    FUNC4(service_handle, TRUE);

    /* so both checks should succeed */
    Status = FUNC0(&ntPath, TRUE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_SUCCESS);
    Status = FUNC0(&ntPath, FALSE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_SUCCESS);

    /* We know the file is in the cache now (assuming previous tests succeeded,
        let's test invalid handle behavior */
    CacheEntry.ImageName = ntPath;
    CacheEntry.ImageHandle = 0;
    Status = FUNC10(ApphelpCacheServiceLookup, &CacheEntry);
    FUNC9(Status, STATUS_NOT_FOUND);

    /* re-add it for the next test */
    FUNC4(service_handle, TRUE);
    Status = FUNC0(&ntPath, TRUE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_SUCCESS);
    CacheEntry.ImageHandle = (HANDLE)1;
    Status = FUNC10(ApphelpCacheServiceLookup, &CacheEntry);
    FUNC9(Status, STATUS_NOT_FOUND);

    /* and again */
    FUNC4(service_handle, TRUE);
    Status = FUNC0(&ntPath, TRUE, ApphelpCacheServiceLookup);
    FUNC9(Status, STATUS_SUCCESS);
#ifdef _WIN64
    CacheEntry.ImageHandle = (HANDLE)0x8000000000000000ULL;
#else
    CacheEntry.ImageHandle = (HANDLE)0x80000000;
#endif
    Status = FUNC10(ApphelpCacheServiceLookup, &CacheEntry);
    FUNC9(Status, STATUS_NOT_FOUND);

    FUNC6(FUNC7(), 0, ntPath.Buffer);
}