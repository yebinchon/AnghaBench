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
 char* FUNC0 (char const*,char const*,char const*,char const*,...) ; 
 int FUNC1 (char const*,char const*,char**) ; 

int FUNC2(const char *page, const char *section, char **ret) {
        const char *url, *text;

        url = FUNC0("man:", page, "(", section, ")");
        text = FUNC0(page, "(", section, ") man page");

        return FUNC1(url, text, ret);
}