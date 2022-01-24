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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

sds FUNC3(sds o, char *s, size_t len) {
    char *color = "white";

    if (FUNC2(s,"<debug>")) color = "bold";
    if (FUNC2(s,"<redis>")) color = "green";
    if (FUNC2(s,"<reply>")) color = "cyan";
    if (FUNC2(s,"<error>")) color = "red";
    if (FUNC2(s,"<hint>")) color = "bold";
    if (FUNC2(s,"<value>") || FUNC2(s,"<retval>")) color = "magenta";
    if (len > 4 && FUNC0(s[3])) {
        if (s[1] == '>') color = "yellow"; /* Current line. */
        else if (s[2] == '#') color = "bold"; /* Break point. */
    }
    return FUNC1(o,s,len,color);
}