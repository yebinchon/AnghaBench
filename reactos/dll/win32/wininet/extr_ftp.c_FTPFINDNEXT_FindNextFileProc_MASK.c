#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int dwFlags; int /*<<< orphan*/  dwContext; } ;
struct TYPE_11__ {size_t index; size_t size; TYPE_6__ hdr; int /*<<< orphan*/ * lpafp; } ;
typedef  TYPE_1__ WININETFTPFINDNEXTW ;
struct TYPE_12__ {size_t nFileSizeLow; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_2__ WIN32_FIND_DATAW ;
struct TYPE_13__ {int dwResult; scalar_t__ dwError; } ;
typedef  TYPE_2__* LPVOID ;
typedef  TYPE_4__ INTERNET_ASYNC_RESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_FILES ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int INTERNET_FLAG_ASYNC ; 
 int /*<<< orphan*/  INTERNET_STATUS_REQUEST_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC5(WININETFTPFINDNEXTW *find, LPVOID data)
{
    WIN32_FIND_DATAW *find_data = data;
    DWORD res = ERROR_SUCCESS;

    FUNC2("index(%d) size(%d)\n", find->index, find->size);

    FUNC3(find_data, sizeof(WIN32_FIND_DATAW));

    if (find->index < find->size) {
        FUNC0(&find->lpafp[find->index], find_data);
        find->index++;

        FUNC2("Name: %s\nSize: %d\n", FUNC4(find_data->cFileName), find_data->nFileSizeLow);
    }else {
        res = ERROR_NO_MORE_FILES;
    }

    if (find->hdr.dwFlags & INTERNET_FLAG_ASYNC)
    {
        INTERNET_ASYNC_RESULT iar;

        iar.dwResult = (res == ERROR_SUCCESS);
        iar.dwError = res;

        FUNC1(&find->hdr, find->hdr.dwContext,
                              INTERNET_STATUS_REQUEST_COMPLETE, &iar,
                              sizeof(INTERNET_ASYNC_RESULT));
    }

    return res;
}