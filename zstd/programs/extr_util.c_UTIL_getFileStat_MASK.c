#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int st_mode; } ;
typedef  TYPE_1__ stat_t ;

/* Variables and functions */
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,TYPE_1__*) ; 
 int FUNC2 (char const*,TYPE_1__*) ; 

int FUNC3(const char* infilename, stat_t *statbuf)
{
    int r;
#if defined(_MSC_VER)
    r = _stat64(infilename, statbuf);
    if (r || !(statbuf->st_mode & S_IFREG)) return 0;   /* No good... */
#else
    r = FUNC2(infilename, statbuf);
    if (r || !FUNC0(statbuf->st_mode)) return 0;   /* No good... */
#endif
    return 1;
}