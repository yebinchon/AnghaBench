#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t n_devices; int /*<<< orphan*/  match_parent; int /*<<< orphan*/  match_tag; int /*<<< orphan*/  match_sysname; int /*<<< orphan*/  match_property; int /*<<< orphan*/  nomatch_sysattr; int /*<<< orphan*/  match_sysattr; int /*<<< orphan*/  nomatch_subsystem; int /*<<< orphan*/  match_subsystem; int /*<<< orphan*/ * devices; } ;
typedef  TYPE_1__ sd_device_enumerator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_device_enumerator *FUNC6(sd_device_enumerator *enumerator) {
        size_t i;

        FUNC0(enumerator);

        for (i = 0; i < enumerator->n_devices; i++)
                FUNC4(enumerator->devices[i]);

        FUNC1(enumerator->devices);
        FUNC5(enumerator->match_subsystem);
        FUNC5(enumerator->nomatch_subsystem);
        FUNC2(enumerator->match_sysattr);
        FUNC2(enumerator->nomatch_sysattr);
        FUNC2(enumerator->match_property);
        FUNC5(enumerator->match_sysname);
        FUNC5(enumerator->match_tag);
        FUNC5(enumerator->match_parent);

        return FUNC3(enumerator);
}