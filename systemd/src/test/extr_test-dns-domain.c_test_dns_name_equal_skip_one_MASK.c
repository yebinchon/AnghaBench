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
 int FUNC1 (char const*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int,char const*,int) ; 

__attribute__((used)) static void FUNC3(const char *a, unsigned n_labels, const char *b, int ret) {
        FUNC2("%s, %u, %s, →%d", a, n_labels, b, ret);

        FUNC0(FUNC1(a, n_labels, b) == ret);
}