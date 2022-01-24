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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *what, const char *expect, size_t buffer_sz, int ret) {
        uint8_t buffer[buffer_sz];
        int r;

        FUNC2("%s, %s, %zu, →%d", what, expect, buffer_sz, ret);

        r = FUNC1(what, buffer, buffer_sz, false);
        FUNC0(r == ret);

        if (r < 0)
                return;

        FUNC0(!FUNC3(buffer, expect, r));
}