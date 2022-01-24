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
struct TYPE_7__ {scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_address_labels; int /*<<< orphan*/  address_labels_by_section; int /*<<< orphan*/  address_labels; } ;
typedef  TYPE_2__ AddressLabel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  labels ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(AddressLabel *label) {
        if (!label)
                return;

        if (label->network) {
                FUNC0(labels, label->network->address_labels, label);
                FUNC1(label->network->n_address_labels > 0);
                label->network->n_address_labels--;

                if (label->section) {
                        FUNC3(label->network->address_labels_by_section, label->section);
                        FUNC4(label->section);
                }
        }

        FUNC2(label);
}