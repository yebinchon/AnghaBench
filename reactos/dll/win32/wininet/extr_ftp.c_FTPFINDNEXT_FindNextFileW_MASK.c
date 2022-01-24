#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
struct TYPE_11__ {int /*<<< orphan*/  hdr; void* find_data; } ;
typedef  TYPE_4__ find_next_task_t ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; TYPE_3__* lpFtpSession; } ;
typedef  TYPE_5__ WININETFTPFINDNEXTW ;
struct TYPE_10__ {TYPE_2__* lpAppInfo; } ;
struct TYPE_8__ {int dwFlags; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FTPFINDNEXT_AsyncFindNextFileProc ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int INTERNET_FLAG_ASYNC ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static DWORD FUNC3(object_header_t *hdr, void *data)
{
    WININETFTPFINDNEXTW *find = (WININETFTPFINDNEXTW*)hdr;

    if (find->lpFtpSession->lpAppInfo->hdr.dwFlags & INTERNET_FLAG_ASYNC)
    {
        find_next_task_t *task;

        task = FUNC2(&find->hdr, FTPFINDNEXT_AsyncFindNextFileProc, sizeof(*task));
        task->find_data = data;

        FUNC1(&task->hdr);
        return ERROR_SUCCESS;
    }

    return FUNC0(find, data);
}