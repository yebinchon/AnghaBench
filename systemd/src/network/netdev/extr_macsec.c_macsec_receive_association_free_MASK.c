#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sa; scalar_t__ section; TYPE_1__* macsec; } ;
struct TYPE_5__ {int /*<<< orphan*/  receive_associations_by_section; } ;
typedef  TYPE_2__ ReceiveAssociation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(ReceiveAssociation *c) {
        if (!c)
                return;

        if (c->macsec && c->section)
                FUNC2(c->macsec->receive_associations_by_section, c->section);

        FUNC1(c->section);
        FUNC3(&c->sa);

        FUNC0(c);
}