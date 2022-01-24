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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,char) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  epos ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (char*,char**,int) ; 

int FUNC5(FILE *fp, char prefix, long *target) {
    char buf[128], *eptr;
    epos = FUNC3(fp);
    if (FUNC2(buf,sizeof(buf),fp) == NULL) {
        return 0;
    }
    if (buf[0] != prefix) {
        FUNC0("Expected prefix '%c', got: '%c'",prefix,buf[0]);
        return 0;
    }
    *target = FUNC4(buf+1,&eptr,10);
    return FUNC1(eptr);
}