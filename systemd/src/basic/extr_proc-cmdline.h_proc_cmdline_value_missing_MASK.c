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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static inline bool FUNC1(const char *key, const char *value) {
        if (!value) {
                FUNC0("Missing argument for %s= kernel command line switch, ignoring.", key);
                return true;
        }

        return false;
}