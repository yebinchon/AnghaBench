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
typedef  int /*<<< orphan*/  backup ;

/* Variables and functions */
 int MEMTEST_BACKUP_WORDS ; 
 size_t MEMTEST_DECACHE_SIZE ; 
 int /*<<< orphan*/  ULONG_ONEZERO ; 
 unsigned long ULONG_ZEROONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long*,size_t) ; 
 scalar_t__ FUNC1 (unsigned long*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long*,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,size_t,int /*<<< orphan*/ ,unsigned long,char,int /*<<< orphan*/ ) ; 

int FUNC5(unsigned long *m, size_t bytes, int passes) {
    unsigned long backup[MEMTEST_BACKUP_WORDS];
    unsigned long *p = m;
    unsigned long *end = (unsigned long*) (((unsigned char*)m)+(bytes-MEMTEST_DECACHE_SIZE));
    size_t left = bytes;
    int errors = 0;

    if (bytes & 4095) return 0; /* Can't test across 4k page boundaries. */
    if (bytes < 4096*2) return 0; /* Can't test a single page. */

    while(left) {
        /* If we have to test a single final page, go back a single page
         * so that we can test two pages, since the code can't test a single
         * page but at least two. */
        if (left == 4096) {
            left += 4096;
            p -= 4096/sizeof(unsigned long);
        }

        int pass = 0;
        size_t len = (left > sizeof(backup)) ? sizeof(backup) : left;

        /* Always test an even number of pages. */
        if (len/4096 % 2) len -= 4096;

        FUNC0(backup,p,len); /* Backup. */
        while(pass != passes) {
            pass++;
            errors += FUNC1(p,len,0);
            FUNC3(p,len,0);
            if (bytes >= MEMTEST_DECACHE_SIZE) {
                FUNC2(m,MEMTEST_DECACHE_SIZE,pass,1,0);
                FUNC2(end,MEMTEST_DECACHE_SIZE,pass,1,0);
            }
            errors += FUNC2(p,len,pass,4,0);
            FUNC4(p,len,0,(unsigned long)-1,'S',0);
            if (bytes >= MEMTEST_DECACHE_SIZE) {
                FUNC2(m,MEMTEST_DECACHE_SIZE,pass,1,0);
                FUNC2(end,MEMTEST_DECACHE_SIZE,pass,1,0);
            }
            errors += FUNC2(p,len,pass,4,0);
            FUNC4(p,len,ULONG_ONEZERO,ULONG_ZEROONE,'C',0);
            if (bytes >= MEMTEST_DECACHE_SIZE) {
                FUNC2(m,MEMTEST_DECACHE_SIZE,pass,1,0);
                FUNC2(end,MEMTEST_DECACHE_SIZE,pass,1,0);
            }
            errors += FUNC2(p,len,pass,4,0);
        }
        FUNC0(p,backup,len); /* Restore. */
        left -= len;
        p += len/sizeof(unsigned long);
    }
    return errors;
}