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
 int SHOW_UNCHANGED ; 
 int arg_flags ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static int FUNC1(const char *f) {
        if (!(arg_flags & SHOW_UNCHANGED))
                return 0;

        FUNC0("[UNCHANGED]  %s\n", f);
        return 1;
}