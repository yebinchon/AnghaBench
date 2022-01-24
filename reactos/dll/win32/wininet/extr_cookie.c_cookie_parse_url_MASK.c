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
typedef  int /*<<< orphan*/  substr_t ;
typedef  int /*<<< orphan*/  comp ;
typedef  char WCHAR ;
struct TYPE_3__ {int member_0; int dwHostNameLength; int dwUrlPathLength; char* lpszUrlPath; char const* lpszHostName; } ;
typedef  TYPE_1__ URL_COMPONENTSW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 

__attribute__((used)) static BOOL FUNC2(const WCHAR *url, substr_t *host, substr_t *path)
{
    URL_COMPONENTSW comp = { sizeof(comp) };
    static const WCHAR rootW[] = {'/',0};

    comp.dwHostNameLength = 1;
    comp.dwUrlPathLength = 1;

    if(!FUNC0(url, 0, 0, &comp) || !comp.dwHostNameLength)
        return FALSE;

    /* discard the webpage off the end of the path */
    while(comp.dwUrlPathLength && comp.lpszUrlPath[comp.dwUrlPathLength-1] != '/')
        comp.dwUrlPathLength--;

    *host = FUNC1(comp.lpszHostName, comp.dwHostNameLength);
    *path = comp.dwUrlPathLength ? FUNC1(comp.lpszUrlPath, comp.dwUrlPathLength) : FUNC1(rootW, 1);
    return TRUE;
}