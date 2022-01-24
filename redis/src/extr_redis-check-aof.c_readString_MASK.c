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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,long*) ; 
 scalar_t__ FUNC3 (long) ; 

int FUNC4(FILE *fp, char** target) {
    long len;
    *target = NULL;
    if (!FUNC2(fp,'$',&len)) {
        return 0;
    }

    /* Increase length to also consume \r\n */
    len += 2;
    *target = (char*)FUNC3(len);
    if (!FUNC1(fp,*target,len)) {
        return 0;
    }
    if (!FUNC0(*target+len-2)) {
        return 0;
    }
    (*target)[len-2] = '\0';
    return 1;
}