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
struct TYPE_5__ {int /*<<< orphan*/  event; void* reply; void* current; void* output_buffer; void* input_buffer; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Varlink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(Varlink *v) {
        FUNC0(v);

        FUNC5(v);

        v->fd = FUNC3(v->fd);

        v->input_buffer = FUNC2(v->input_buffer);
        v->output_buffer = FUNC2(v->output_buffer);

        v->current = FUNC1(v->current);
        v->reply = FUNC1(v->reply);

        v->event = FUNC4(v->event);
}