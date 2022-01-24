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
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,char const*) ; 

__attribute__((used)) static void FUNC5(void *handle, const char *module, const char *name) {
        FUNC3(handle, module, name);
        FUNC0("");

        FUNC2(handle, module, name, AF_INET);
        FUNC0("");
        FUNC2(handle, module, name, AF_INET6);
        FUNC0("");
        FUNC2(handle, module, name, AF_UNSPEC);
        FUNC0("");
        FUNC2(handle, module, name, AF_LOCAL);
        FUNC0("");

        FUNC1(handle, module, name, AF_INET);
        FUNC0("");
        FUNC1(handle, module, name, AF_INET6);
        FUNC0("");
        FUNC1(handle, module, name, AF_UNSPEC);
        FUNC0("");
        FUNC1(handle, module, name, AF_LOCAL);
        FUNC0("");

        FUNC4(handle, module, name);
        FUNC0("");
}