#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * tests; } ;

/* Variables and functions */
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 

int FUNC3(char *name) {
    char buf[256];
    int l = FUNC1(name);

    if (config.tests == NULL) return 1;
    buf[0] = ',';
    FUNC0(buf+1,name,l);
    buf[l+1] = ',';
    buf[l+2] = '\0';
    return FUNC2(config.tests,buf) != NULL;
}