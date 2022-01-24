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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,long long*) ; 

char *FUNC4(sds *o, char *reply) {
    char *p = FUNC2(reply+1,'\r');
    long long mbulklen;
    int j = 0;

    FUNC3(reply+1,p-reply-1,&mbulklen);
    p += 2;
    if (mbulklen == -1) {
        *o = FUNC1(*o,"NULL",4);
        return p;
    }
    *o = FUNC1(*o,"[",1);
    for (j = 0; j < mbulklen; j++) {
        p = FUNC0(o,p);
        if (j != mbulklen-1) *o = FUNC1(*o,",",1);
    }
    *o = FUNC1(*o,"]",1);
    return p;
}