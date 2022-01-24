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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,long) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

size_t FUNC8(char *field, long pid) {
    char line[1024];
    size_t bytes = 0;
    int flen = FUNC5(field);
    FILE *fp;

    if (pid == -1) {
        fp = FUNC2("/proc/self/smaps","r");
    } else {
        char filename[128];
        FUNC3(filename,sizeof(filename),"/proc/%ld/smaps",pid);
        fp = FUNC2(filename,"r");
    }

    if (!fp) return 0;
    while(FUNC1(line,sizeof(line),fp) != NULL) {
        if (FUNC6(line,field,flen) == 0) {
            char *p = FUNC4(line,'k');
            if (p) {
                *p = '\0';
                bytes += FUNC7(line+flen,NULL,10) * 1024;
            }
        }
    }
    FUNC0(fp);
    return bytes;
}