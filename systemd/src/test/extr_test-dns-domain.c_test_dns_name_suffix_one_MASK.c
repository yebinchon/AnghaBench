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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,unsigned int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int,char const*,int) ; 
 int FUNC3 (char const*,char const*) ; 

__attribute__((used)) static void FUNC4(const char *name, unsigned n_labels, const char *result, int ret) {
        const char *p = NULL;

        FUNC2("%s, %d, →%s, %d", name, n_labels, result, ret);

        FUNC0(ret == FUNC1(name, n_labels, &p));
        FUNC0(FUNC3(p, result));
}