#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _utimbuf {int dummy; } ;
typedef  int /*<<< orphan*/  _TCHAR ;

/* Variables and functions */
 int _O_BINARY ; 
 int _O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct _utimbuf*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int) ; 

int
FUNC3(const _TCHAR* path, struct _utimbuf *t)
{
    int fd = FUNC2(path, _O_WRONLY | _O_BINARY);

    if (fd > 0)
    {
        int retVal = FUNC1(fd, t);
        FUNC0(fd);
        return retVal;
    }
    return -1;
}