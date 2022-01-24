#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fileinfo {char* path; void* delete_on_close; scalar_t__ pdir; } ;
struct TYPE_4__ {int /*<<< orphan*/  notify_stamp; struct fileinfo* fileinfo; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t NTHANDLE ;

/* Variables and functions */
 void* False ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_CANCELLED ; 
 int /*<<< orphan*/  STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static NTSTATUS
FUNC6(RDPCLIENT * This, NTHANDLE handle)
{
	struct fileinfo *pfinfo;

	pfinfo = &(This->fileinfo[handle]);

	This->notify_stamp = True;

	FUNC3(This, handle, 0, STATUS_CANCELLED);

	if (pfinfo->pdir)
	{
		if (FUNC1(pfinfo->pdir) < 0)
		{
			FUNC2("closedir");
			return STATUS_INVALID_HANDLE;
		}

		if (pfinfo->delete_on_close)
			if (FUNC4(pfinfo->path) < 0)
			{
				FUNC2(pfinfo->path);
				return STATUS_ACCESS_DENIED;
			}
		pfinfo->delete_on_close = False;
	}
	else
	{
		if (FUNC0(handle) < 0)
		{
			FUNC2("close");
			return STATUS_INVALID_HANDLE;
		}
		if (pfinfo->delete_on_close)
			if (FUNC5(pfinfo->path) < 0)
			{
				FUNC2(pfinfo->path);
				return STATUS_ACCESS_DENIED;
			}

		pfinfo->delete_on_close = False;
	}

	return STATUS_SUCCESS;
}