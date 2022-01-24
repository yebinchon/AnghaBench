#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ as_uint64; } ;
struct TYPE_8__ {scalar_t__* section; TYPE_2__* macsec; TYPE_1__ sci; } ;
struct TYPE_7__ {int /*<<< orphan*/  receive_channels_by_section; int /*<<< orphan*/  receive_channels; } ;
typedef  TYPE_3__ ReceiveChannel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(ReceiveChannel *c) {
        if (!c)
                return;

        if (c->macsec) {
                if (c->sci.as_uint64 > 0)
                        FUNC2(c->macsec->receive_channels, &c->sci.as_uint64);

                if (c->section)
                        FUNC2(c->macsec->receive_channels_by_section, c->section);
        }

        FUNC1(c->section);

        FUNC0(c);
}