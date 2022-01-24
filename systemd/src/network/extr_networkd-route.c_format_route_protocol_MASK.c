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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char**,size_t,char*,int) ; 

const char *FUNC3(int protocol, char *buf, size_t size) {
        const char *s;
        char *p = buf;

        s = FUNC0(protocol);
        if (s)
                FUNC1(&p, size, s);
        else
                FUNC2(&p, size, "%d", protocol);

        return buf;
}