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
typedef  size_t uint32 ;
struct TYPE_5__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_4__ {int handle; int /*<<< orphan*/  local_path; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int NTHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  LPABORT ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static NTSTATUS
FUNC4(RDPCLIENT * This, uint32 device_id, uint32 access, uint32 share_mode, uint32 disposition,
		uint32 flags, char *filename, NTHANDLE * handle)
{
	int parallel_fd;

	parallel_fd = FUNC2(This->rdpdr_device[device_id].local_path, O_RDWR);
	if (parallel_fd == -1)
	{
		FUNC3("open");
		return STATUS_ACCESS_DENIED;
	}

	/* all read and writes should be non blocking */
	if (FUNC0(parallel_fd, F_SETFL, O_NONBLOCK) == -1)
		FUNC3("fcntl");

#if defined(LPABORT)
	/* Retry on errors */
	ioctl(parallel_fd, LPABORT, (int) 1);
#endif

	This->rdpdr_device[device_id].handle = parallel_fd;

	*handle = parallel_fd;

	return STATUS_SUCCESS;
}