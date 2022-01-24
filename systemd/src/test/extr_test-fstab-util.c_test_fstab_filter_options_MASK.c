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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("opt=0", "opt\0x-opt\0", 1, "opt", "0", "");
        FUNC0("opt=0", "x-opt\0opt\0", 1, "opt", "0", "");
        FUNC0("opt", "opt\0x-opt\0", 1, "opt", NULL, "");
        FUNC0("opt", "x-opt\0opt\0", 1, "opt", NULL, "");
        FUNC0("x-opt", "x-opt\0opt\0", 1, "x-opt", NULL, "");

        FUNC0("opt=0,other", "opt\0x-opt\0", 1, "opt", "0", "other");
        FUNC0("opt=0,other", "x-opt\0opt\0", 1, "opt", "0", "other");
        FUNC0("opt,other", "opt\0x-opt\0", 1, "opt", NULL, "other");
        FUNC0("opt,other", "x-opt\0opt\0", 1, "opt", NULL, "other");
        FUNC0("x-opt,other", "opt\0x-opt\0", 1, "x-opt", NULL, "other");

        FUNC0("opto=0,other", "opt\0x-opt\0", 0, NULL, NULL, NULL);
        FUNC0("opto,other", "opt\0x-opt\0", 0, NULL, NULL, NULL);
        FUNC0("x-opto,other", "opt\0x-opt\0", 0, NULL, NULL, NULL);

        FUNC0("first,opt=0", "opt\0x-opt\0", 1, "opt", "0", "first");
        FUNC0("first=1,opt=0", "opt\0x-opt\0", 1, "opt", "0", "first=1");
        FUNC0("first,opt=", "opt\0x-opt\0", 1, "opt", "", "first");
        FUNC0("first=1,opt", "opt\0x-opt\0", 1, "opt", NULL, "first=1");
        FUNC0("first=1,x-opt", "opt\0x-opt\0", 1, "x-opt", NULL, "first=1");

        FUNC0("first,opt=0,last=1", "opt\0x-opt\0", 1, "opt", "0", "first,last=1");
        FUNC0("first=1,opt=0,last=2", "x-opt\0opt\0", 1, "opt", "0", "first=1,last=2");
        FUNC0("first,opt,last", "opt\0", 1, "opt", NULL, "first,last");
        FUNC0("first=1,opt,last", "x-opt\0opt\0", 1, "opt", NULL, "first=1,last");
        FUNC0("first=,opt,last", "opt\0noopt\0", 1, "opt", NULL, "first=,last");

        /* check repeated options */
        FUNC0("first,opt=0,noopt=1,last=1", "opt\0noopt\0", 1, "noopt", "1", "first,last=1");
        FUNC0("first=1,opt=0,last=2,opt=1", "opt\0", 1, "opt", "1", "first=1,last=2");
        FUNC0("x-opt=0,x-opt=1", "opt\0x-opt\0", 1, "x-opt", "1", "");
        FUNC0("opt=0,x-opt=1", "opt\0x-opt\0", 1, "x-opt", "1", "");

        /* check that semicolons are not misinterpreted */
        FUNC0("opt=0;", "opt\0", 1, "opt", "0;", "");
        FUNC0("opt;=0", "x-opt\0opt\0noopt\0x-noopt\0", 0, NULL, NULL, NULL);
        FUNC0("opt;", "opt\0x-opt\0", 0, NULL, NULL, NULL);

        /* check that spaces are not misinterpreted */
        FUNC0("opt=0 ", "opt\0", 1, "opt", "0 ", "");
        FUNC0("opt =0", "x-opt\0opt\0noopt\0x-noopt\0", 0, NULL, NULL, NULL);
        FUNC0(" opt ", "opt\0x-opt\0", 0, NULL, NULL, NULL);

        /* check function will NULL args */
        FUNC0(NULL, "opt\0", 0, NULL, NULL, "");
        FUNC0("", "opt\0", 0, NULL, NULL, "");
}