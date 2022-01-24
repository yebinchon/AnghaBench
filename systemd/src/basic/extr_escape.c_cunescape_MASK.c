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
typedef  int /*<<< orphan*/  UnescapeFlags ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int FUNC2(const char *s, UnescapeFlags flags, char **ret) {
        return FUNC0(s, FUNC1(s), flags, ret);
}