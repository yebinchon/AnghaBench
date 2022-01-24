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

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 char* FUNC5 (char*,char) ; 
 size_t FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

size_t FUNC8(void) {
    int page = FUNC7(_SC_PAGESIZE);
    size_t rss;
    char buf[4096];
    char filename[256];
    int fd, count;
    char *p, *x;

    FUNC4(filename,256,"/proc/%d/stat",FUNC1());
    if ((fd = FUNC2(filename,O_RDONLY)) == -1) return 0;
    if (FUNC3(fd,buf,4096) <= 0) {
        FUNC0(fd);
        return 0;
    }
    FUNC0(fd);

    p = buf;
    count = 23; /* RSS is the 24th field in /proc/<pid>/stat */
    while(p && count--) {
        p = FUNC5(p,' ');
        if (p) p++;
    }
    if (!p) return 0;
    x = FUNC5(p,' ');
    if (!x) return 0;
    *x = '\0';

    rss = FUNC6(p,NULL,10);
    rss *= page;
    return rss;
}