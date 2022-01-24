#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct stat {scalar_t__ st_ctime; scalar_t__ st_mtime; } ;
struct fileinfo {char* path; } ;
struct dirent {char* d_name; } ;
struct TYPE_6__ {scalar_t__ total_time; scalar_t__ num_entries; scalar_t__ status_time; scalar_t__ modify_time; } ;
struct TYPE_5__ {struct fileinfo* fileinfo; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t NTHANDLE ;
typedef  TYPE_2__ NOTIFY ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (size_t,struct stat*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static NTSTATUS
FUNC11(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, NOTIFY * p)
{
	struct fileinfo *pfinfo;
	struct stat buf;
	struct dirent *dp;
	char *fullname;
	DIR *dpr;

	pfinfo = &(This->fileinfo[handle]);
	if (FUNC1(handle, &buf) < 0)
	{
		FUNC3("NotifyInfo");
		return STATUS_ACCESS_DENIED;
	}
	p->modify_time = buf.st_mtime;
	p->status_time = buf.st_ctime;
	p->num_entries = 0;
	p->total_time = 0;


	dpr = FUNC2(pfinfo->path);
	if (!dpr)
	{
		FUNC3("NotifyInfo");
		return STATUS_ACCESS_DENIED;
	}


	while ((dp = FUNC4(dpr)))
	{
		if (!FUNC7(dp->d_name, ".") || !FUNC7(dp->d_name, ".."))
			continue;
		p->num_entries++;
		fullname = (char *) FUNC10(FUNC8(pfinfo->path) + FUNC8(dp->d_name) + 2);
		FUNC5(fullname, "%s/%s", pfinfo->path, dp->d_name);

		if (!FUNC6(fullname, &buf))
		{
			p->total_time += (buf.st_mtime + buf.st_ctime);
		}

		FUNC9(fullname);
	}
	FUNC0(dpr);

	return STATUS_PENDING;
}