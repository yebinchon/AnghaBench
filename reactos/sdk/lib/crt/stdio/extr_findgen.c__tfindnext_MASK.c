#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* time_t ;
struct _tfinddata_t {int /*<<< orphan*/  name; scalar_t__ size; void* time_write; void* time_access; void* time_create; int /*<<< orphan*/  attrib; } ;
typedef  int __int64 ;
struct TYPE_3__ {int /*<<< orphan*/  cFileName; scalar_t__ nFileSizeLow; scalar_t__ nFileSizeHigh; int /*<<< orphan*/  ftLastWriteTime; int /*<<< orphan*/  ftLastAccessTime; int /*<<< orphan*/  ftCreationTime; int /*<<< orphan*/  dwFileAttributes; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(intptr_t handle, struct _tfinddata_t* result)
{
    WIN32_FIND_DATA FindFileData;

    if (!FUNC1((HANDLE)handle, &FindFileData)) {
    	FUNC3(FUNC2());
        return -1;
	}

    result->attrib = FindFileData.dwFileAttributes;
    result->time_create = (time_t)FUNC0(&FindFileData.ftCreationTime,NULL);
    result->time_access = (time_t)FUNC0(&FindFileData.ftLastAccessTime,NULL);
    result->time_write = (time_t)FUNC0(&FindFileData.ftLastWriteTime,NULL);
    result->size = (((__int64)FindFileData.nFileSizeHigh)<<32) + FindFileData.nFileSizeLow;
    FUNC4(result->name,FindFileData.cFileName, MAX_PATH);

    return 0;
}