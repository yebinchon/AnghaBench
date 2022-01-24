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
 int AF_UNSPEC ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int) ; 

__attribute__((used)) static const char* FUNC2(int family, char *buf, size_t buf_len) {
        const char *name;

        if (family == AF_UNSPEC)
                return "*";

        name = FUNC0(family);
        if (name)
                return name;

        FUNC1(buf, buf_len, "%i", family);
        return buf;
}