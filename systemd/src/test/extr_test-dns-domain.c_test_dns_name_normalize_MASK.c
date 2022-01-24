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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("", ".", 0);
        FUNC0("f", "f", 0);
        FUNC0("f.waldi", "f.waldi", 0);
        FUNC0("f \\032.waldi", "f\\032\\032.waldi", 0);
        FUNC0("\\000", "\\000", 0);
        FUNC0("..", NULL, -EINVAL);
        FUNC0(".foobar", NULL, -EINVAL);
        FUNC0("foobar.", "foobar", 0);
        FUNC0(".", ".", 0);
}