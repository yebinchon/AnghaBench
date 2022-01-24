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
struct TYPE_4__ {void* defer_event_source; void* quit_event_source; void* time_event_source; void* io_event_source; } ;
typedef  TYPE_1__ Varlink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(Varlink *v) {
        FUNC0(v);

        v->io_event_source = FUNC1(v->io_event_source);

        v->time_event_source = FUNC1(v->time_event_source);

        v->quit_event_source = FUNC1(v->quit_event_source);

        v->defer_event_source = FUNC1(v->defer_event_source);
}