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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,size_t) ; 

char *FUNC5(FILE *fp, size_t *lenp) {
    char *buf = NULL;
    int c, used = 0, len = 0;

    FUNC0(fp);
    while ((c = FUNC3(fp)) != EOF) {
        if (!buf || len >= used) {
            size_t nsize;
            char *newbuf;
            nsize = used + BUFSIZ;
            if (!(newbuf = FUNC4(buf, nsize))) {
                FUNC2(fp);
                if (buf)
                    FUNC1(buf);
                return NULL;
            }
            buf = newbuf;
            used = nsize;
        }
        buf[len++] = c;
        if (c == '\n') {
            break;
        }
    }
    FUNC2(fp);
    *lenp = len;
    return buf;
}