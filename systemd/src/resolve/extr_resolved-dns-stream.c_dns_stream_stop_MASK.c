#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fd; void* timeout_event_source; void* io_event_source; } ;
typedef  TYPE_1__ DnsStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(DnsStream *s) {
        FUNC0(s);

        s->io_event_source = FUNC3(s->io_event_source);
        s->timeout_event_source = FUNC3(s->timeout_event_source);
        s->fd = FUNC2(s->fd);

        /* Disconnect us from the server object if we are now not usable anymore */
        FUNC1(s);
}