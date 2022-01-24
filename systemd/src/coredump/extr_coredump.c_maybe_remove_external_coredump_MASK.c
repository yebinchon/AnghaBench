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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ COREDUMP_STORAGE_EXTERNAL ; 
 scalar_t__ ENOENT ; 
 scalar_t__ arg_external_size_max ; 
 scalar_t__ arg_storage ; 
 scalar_t__ errno ; 
 int FUNC0 (scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *filename, uint64_t size) {

        /* Returns 1 if might remove, 0 if will not remove, < 0 on error. */

        if (arg_storage == COREDUMP_STORAGE_EXTERNAL &&
            size <= arg_external_size_max)
                return 0;

        if (!filename)
                return 1;

        if (FUNC1(filename) < 0 && errno != ENOENT)
                return FUNC0(errno, "Failed to unlink %s: %m", filename);

        return 1;
}