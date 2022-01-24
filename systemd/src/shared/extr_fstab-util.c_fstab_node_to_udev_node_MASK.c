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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char*) ; 

char *FUNC4(const char *p) {
        FUNC0(p);

        if (FUNC1(p, "LABEL="))
                return FUNC3(p+6, "label");

        if (FUNC1(p, "UUID="))
                return FUNC3(p+5, "uuid");

        if (FUNC1(p, "PARTUUID="))
                return FUNC3(p+9, "partuuid");

        if (FUNC1(p, "PARTLABEL="))
                return FUNC3(p+10, "partlabel");

        return FUNC2(p);
}