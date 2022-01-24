#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UdevBuiltinCommand ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  WHITESPACE ; 
 size_t _UDEV_BUILTIN_INVALID ; 
 size_t _UDEV_BUILTIN_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__** builtins ; 
 size_t FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

UdevBuiltinCommand FUNC4(const char *command) {
        UdevBuiltinCommand i;
        size_t n;

        FUNC0(command);

        command += FUNC3(command, WHITESPACE);
        n = FUNC1(command, WHITESPACE);
        for (i = 0; i < _UDEV_BUILTIN_MAX; i++)
                if (builtins[i] && FUNC2(builtins[i]->name, command, n))
                        return i;

        return _UDEV_BUILTIN_INVALID;
}