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
typedef  int UnitNameFlags ;

/* Variables and functions */
 int UNIT_NAME_INSTANCE ; 
 int UNIT_NAME_PLAIN ; 
 int UNIT_NAME_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const char *name, UnitNameFlags flags, bool expected) {
        FUNC1("%s ( %s%s%s ): %s",
                 name,
                 (flags & UNIT_NAME_PLAIN) ? "plain" : "",
                 (flags & UNIT_NAME_INSTANCE) ? " instance" : "",
                 (flags & UNIT_NAME_TEMPLATE) ? " template" : "",
                 FUNC3(expected));
        FUNC0(FUNC2(name, flags) == expected);
}