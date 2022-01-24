#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int n_read; int /*<<< orphan*/  read_packet; int /*<<< orphan*/  read_size; } ;
typedef  TYPE_1__ DnsStream ;
typedef  int /*<<< orphan*/  DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

DnsPacket *FUNC3(DnsStream *s) {
        FUNC1(s);

        if (!s->read_packet)
                return NULL;

        if (s->n_read < sizeof(s->read_size))
                return NULL;

        if (s->n_read < sizeof(s->read_size) + FUNC2(s->read_size))
                return NULL;

        s->n_read = 0;
        return FUNC0(s->read_packet);
}