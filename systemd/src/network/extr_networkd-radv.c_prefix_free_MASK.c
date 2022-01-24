#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  radv_prefix; scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_static_prefixes; int /*<<< orphan*/  prefixes_by_section; int /*<<< orphan*/  static_prefixes; } ;
typedef  TYPE_2__ Prefix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  prefixes ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Prefix *prefix) {
        if (!prefix)
                return;

        if (prefix->network) {
                FUNC0(prefixes, prefix->network->static_prefixes, prefix);
                FUNC1(prefix->network->n_static_prefixes > 0);
                prefix->network->n_static_prefixes--;

                if (prefix->section)
                        FUNC3(prefix->network->prefixes_by_section,
                                       prefix->section);
        }

        FUNC4(prefix->section);
        FUNC5(prefix->radv_prefix);

        FUNC2(prefix);
}