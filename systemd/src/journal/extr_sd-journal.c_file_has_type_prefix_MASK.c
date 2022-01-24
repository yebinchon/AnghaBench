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
 scalar_t__ FUNC0 (char const*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char const*,char*) ; 

__attribute__((used)) static bool FUNC3(const char *prefix, const char *filename) {
        const char *full, *tilded, *atted;

        full = FUNC2(prefix, ".journal");
        tilded = FUNC2(full, "~");
        atted = FUNC2(prefix, "@");

        return FUNC0(filename, full, tilded) ||
               FUNC1(filename, atted);
}