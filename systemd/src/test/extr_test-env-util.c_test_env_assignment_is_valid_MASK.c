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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC0(FUNC1("a="));
        FUNC0(FUNC1("b=głąb kapuściany"));
        FUNC0(FUNC1("c=\\007\\009\\011"));
        FUNC0(FUNC1("e=printf \"\\x1b]0;<mock-chroot>\\x07<mock-chroot>\""));
        FUNC0(FUNC1("f=tab\tcharacter"));
        FUNC0(FUNC1("g=new\nline"));

        FUNC0(!FUNC1("="));
        FUNC0(!FUNC1("a b="));
        FUNC0(!FUNC1("a ="));
        FUNC0(!FUNC1(" b="));
        /* no dots or dashes: http://tldp.org/LDP/abs/html/gotchas.html */
        FUNC0(!FUNC1("a.b="));
        FUNC0(!FUNC1("a-b="));
        FUNC0(!FUNC1("\007=głąb kapuściany"));
        FUNC0(!FUNC1("c\009=\007\009\011"));
        FUNC0(!FUNC1("głąb=printf \"\x1b]0;<mock-chroot>\x07<mock-chroot>\""));
}