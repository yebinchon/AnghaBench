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
typedef  int /*<<< orphan*/  logbuf ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MEMTEST_MAX_REGIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (void*,size_t,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,unsigned long,unsigned long) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 size_t FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int,char*,int) ; 

int FUNC12(void) {
    FILE *fp;
    char line[1024];
    char logbuf[1024];
    size_t start_addr, end_addr, size;
    size_t start_vect[MEMTEST_MAX_REGIONS];
    size_t size_vect[MEMTEST_MAX_REGIONS];
    int regions = 0, j;

    int fd = FUNC5();
    if (!fd) return 0;

    fp = FUNC3("/proc/self/maps","r");
    if (!fp) return 0;
    while(FUNC2(line,sizeof(line),fp) != NULL) {
        char *start, *end, *p = line;

        start = p;
        p = FUNC7(p,'-');
        if (!p) continue;
        *p++ = '\0';
        end = p;
        p = FUNC7(p,' ');
        if (!p) continue;
        *p++ = '\0';
        if (FUNC9(p,"stack") ||
            FUNC9(p,"vdso") ||
            FUNC9(p,"vsyscall")) continue;
        if (!FUNC9(p,"00:00")) continue;
        if (!FUNC9(p,"rw")) continue;

        start_addr = FUNC10(start,NULL,16);
        end_addr = FUNC10(end,NULL,16);
        size = end_addr-start_addr;

        start_vect[regions] = start_addr;
        size_vect[regions] = size;
        FUNC6(logbuf,sizeof(logbuf),
            "*** Preparing to test memory region %lx (%lu bytes)\n",
                (unsigned long) start_vect[regions],
                (unsigned long) size_vect[regions]);
        if (FUNC11(fd,logbuf,FUNC8(logbuf)) == -1) { /* Nothing to do. */ }
        regions++;
    }

    int errors = 0;
    for (j = 0; j < regions; j++) {
        if (FUNC11(fd,".",1) == -1) { /* Nothing to do. */ }
        errors += FUNC4((void*)start_vect[j],size_vect[j],1);
        if (FUNC11(fd, errors ? "E" : "O",1) == -1) { /* Nothing to do. */ }
    }
    if (FUNC11(fd,"\n",1) == -1) { /* Nothing to do. */ }

    /* NOTE: It is very important to close the file descriptor only now
     * because closing it before may result into unmapping of some memory
     * region that we are testing. */
    FUNC1(fp);
    FUNC0(fd);
    return errors;
}