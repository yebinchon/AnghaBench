#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ n_stdout_streams; int /*<<< orphan*/  stdout_streams_notify_queue; int /*<<< orphan*/  stdout_streams; } ;
struct TYPE_6__ {struct TYPE_6__* buffer; struct TYPE_6__* state_file; struct TYPE_6__* unit_id; struct TYPE_6__* identifier; struct TYPE_6__* label; int /*<<< orphan*/  fd; scalar_t__ event_source; TYPE_4__* server; scalar_t__ in_notify_queue; scalar_t__ context; } ;
typedef  TYPE_1__ StdoutStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  stdout_stream ; 
 int /*<<< orphan*/  stdout_stream_notify_queue ; 

void FUNC7(StdoutStream *s) {
        if (!s)
                return;

        if (s->server) {

                if (s->context)
                        FUNC2(s->server, s->context);

                FUNC1(s->server->n_stdout_streams > 0);
                s->server->n_stdout_streams--;
                FUNC0(stdout_stream, s->server->stdout_streams, s);

                if (s->in_notify_queue)
                        FUNC0(stdout_stream_notify_queue, s->server->stdout_streams_notify_queue, s);
        }

        if (s->event_source) {
                FUNC5(s->event_source, SD_EVENT_OFF);
                s->event_source = FUNC6(s->event_source);
        }

        FUNC4(s->fd);
        FUNC3(s->label);
        FUNC3(s->identifier);
        FUNC3(s->unit_id);
        FUNC3(s->state_file);
        FUNC3(s->buffer);

        FUNC3(s);
}