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
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 size_t FUNC2 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

size_t FUNC3(char *dest, size_t size, const char *src) {
        FUNC0(dest);
        FUNC0(src);

        return FUNC2(dest, size, src, FUNC1(src));
}