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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3(const char *filename, int fdf, int fdt, uint64_t max_bytes) {

        if (FUNC2(filename, ".lz4"))
                return FUNC0(fdf, fdt, max_bytes);
        else if (FUNC2(filename, ".xz"))
                return FUNC1(fdf, fdt, max_bytes);
        else
                return -EPROTONOSUPPORT;
}