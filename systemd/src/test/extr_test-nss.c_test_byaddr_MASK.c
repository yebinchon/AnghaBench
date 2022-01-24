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
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,void const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *handle,
                        const char *module,
                        const void* addr, socklen_t len,
                        int af) {
        FUNC1(handle, module, addr, len, af);
        FUNC0("");

        FUNC2(handle, module, addr, len, af);
        FUNC0("");
}