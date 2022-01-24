#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct recorder {int failed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; struct record_packet* previous; scalar_t__ stopped; int /*<<< orphan*/  queue_cond; } ;
struct TYPE_2__ {int duration; int pts; } ;
struct record_packet {TYPE_1__ packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct record_packet**) ; 
 int /*<<< orphan*/  FUNC8 (struct record_packet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct recorder*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(void *data) {
    struct recorder *recorder = data;

    for (;;) {
        FUNC4(recorder->mutex);

        while (!recorder->stopped && FUNC6(&recorder->queue)) {
            FUNC3(recorder->queue_cond, recorder->mutex);
        }

        // if stopped is set, continue to process the remaining events (to
        // finish the recording) before actually stopping

        if (recorder->stopped && FUNC6(&recorder->queue)) {
            FUNC5(recorder->mutex);
            struct record_packet *last = recorder->previous;
            if (last) {
                // assign an arbitrary duration to the last packet
                last->packet.duration = 100000;
                bool ok = FUNC10(recorder, &last->packet);
                if (!ok) {
                    // failing to write the last frame is not very serious, no
                    // future frame may depend on it, so the resulting file
                    // will still be valid
                    FUNC2("Could not record last packet");
                }
                FUNC8(last);
            }
            break;
        }

        struct record_packet *rec;
        FUNC7(&recorder->queue, next, &rec);

        FUNC5(recorder->mutex);

        // recorder->previous is only written from this thread, no need to lock
        struct record_packet *previous = recorder->previous;
        recorder->previous = rec;

        if (!previous) {
            // we just received the first packet
            continue;
        }

        // we now know the duration of the previous packet
        previous->packet.duration = rec->packet.pts - previous->packet.pts;

        bool ok = FUNC10(recorder, &previous->packet);
        FUNC8(previous);
        if (!ok) {
            FUNC1("Could not record packet");

            FUNC4(recorder->mutex);
            recorder->failed = true;
            // discard pending packets
            FUNC9(&recorder->queue);
            FUNC5(recorder->mutex);
            break;
        }

    }

    FUNC0("Recorder thread ended");

    return 0;
}