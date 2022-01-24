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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

const char *FUNC3(const char *value)
{   /* We handle either token or token = token / quoted-string */
    value += FUNC0(value, ",\"");
    if (!*value)
        return NULL;

    value += FUNC2(value);
    return value + FUNC1(value, "\t ,");
}