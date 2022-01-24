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
struct namespace {char* name; struct namespace* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct namespace*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  use_abi_namespace ; 

__attribute__((used)) static char *FUNC4(char *ptr, struct namespace *namespace, const char *separator)
{
    if(FUNC0(namespace)) {
        if(!use_abi_namespace)
            return ptr;
        FUNC2(ptr, "ABI");
        FUNC1(ptr, separator);
        return ptr + FUNC3(ptr);
    }

    ptr = FUNC4(ptr, namespace->parent, separator);
    FUNC2(ptr, namespace->name);
    FUNC1(ptr, separator);
    return ptr + FUNC3(ptr);
}