#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {scalar_t__ ImageHandle; int /*<<< orphan*/  ImageName; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_2__ APPHELP_CACHE_SERVICE_LOOKUP ;
typedef  int /*<<< orphan*/  APPHELPCACHESERVICECLASS ;

/* Variables and functions */
 int FILE_EXECUTE ; 
 int FILE_NON_DIRECTORY_FILE ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_READ_DATA ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SYNCHRONOUS_IO_NONALERT ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

NTSTATUS FUNC5(UNICODE_STRING* PathName, BOOLEAN WithMapping, APPHELPCACHESERVICECLASS Service)
{
    APPHELP_CACHE_SERVICE_LOOKUP CacheEntry = { 0 };
    NTSTATUS Status;
    CacheEntry.ImageName = *PathName;
    if (WithMapping)
    {
        OBJECT_ATTRIBUTES LocalObjectAttributes;
        IO_STATUS_BLOCK IoStatusBlock;
        FUNC0(&LocalObjectAttributes, PathName,
            OBJ_CASE_INSENSITIVE, NULL, NULL);
        Status = FUNC2(&CacheEntry.ImageHandle,
                    SYNCHRONIZE | FILE_READ_ATTRIBUTES | FILE_READ_DATA | FILE_EXECUTE,
                    &LocalObjectAttributes, &IoStatusBlock,
                    FILE_SHARE_READ | FILE_SHARE_DELETE,
                    FILE_SYNCHRONOUS_IO_NONALERT | FILE_NON_DIRECTORY_FILE);
        FUNC3(Status, STATUS_SUCCESS);
    }
    else
    {
        CacheEntry.ImageHandle = INVALID_HANDLE_VALUE;
    }
    Status = FUNC4(Service, &CacheEntry);
    if (CacheEntry.ImageHandle != INVALID_HANDLE_VALUE)
        FUNC1(CacheEntry.ImageHandle);
    return Status;
}