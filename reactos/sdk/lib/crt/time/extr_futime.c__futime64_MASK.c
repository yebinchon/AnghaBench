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
typedef  scalar_t__ time_t ;
struct _utimbuf {scalar_t__ actime; scalar_t__ modtime; } ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef  TYPE_1__ ioinfo ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  scalar_t__ FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(int fd, struct _utimbuf *filetime)
{
    ioinfo *info = FUNC5(fd);
    FILETIME at, wt;

    if (info->handle == INVALID_HANDLE_VALUE)
    {
        FUNC6(info);
        return -1;
    }

    if (!filetime)
    {
        time_t currTime;
        FUNC4(&currTime);
        FUNC1((ULONG)currTime,
                                  (LARGE_INTEGER *)&at);
        wt = at;
    }
    else
    {
        FUNC1((ULONG)filetime->actime,
                                  (LARGE_INTEGER *)&at);
        if (filetime->actime == filetime->modtime)
        {
            wt = at;
        }
        else
        {
            FUNC1((ULONG)filetime->modtime,
                                      (LARGE_INTEGER *)&wt);
        }
    }

    if (!FUNC2(info->handle, NULL, &at, &wt))
    {
        FUNC6(info);
        FUNC3(FUNC0());
        return -1 ;
    }
    FUNC6(info);
    return 0;
}