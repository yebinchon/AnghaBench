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
typedef  char const DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(DnsPacket *p, const char *s, size_t *start) {
        FUNC0(p);
        FUNC0(s);

        return FUNC1(p, s, FUNC2(s), start);
}