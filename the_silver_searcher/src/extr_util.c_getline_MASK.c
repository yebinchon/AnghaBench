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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 

ssize_t FUNC4(char **lineptr, size_t *n, FILE *stream) {
    size_t len = 0;
    char *srcln = NULL;
    char *newlnptr = NULL;

    /* get line, bail on error */
    if (!(srcln = FUNC0(stream, &len))) {
        return -1;
    }

    if (len >= *n) {
        /* line is too big for buffer, must realloc */
        /* double the buffer, bail on error */
        if (!(newlnptr = FUNC3(*lineptr, len * 2))) {
            return -1;
        }
        *lineptr = newlnptr;
        *n = len * 2;
    }

    FUNC2(*lineptr, srcln, len);

#ifndef HAVE_FGETLN
    /* Our own implementation of fgetln() returns a malloc()d buffer that we
     * must free
     */
    FUNC1(srcln);
#endif

    (*lineptr)[len] = '\0';
    return len;
}