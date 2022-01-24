#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ ** last; } ;
struct TYPE_3__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ ** last; } ;
struct vlc_h2_output {int failed; TYPE_2__ queue; TYPE_1__ prio; int /*<<< orphan*/  lock; int /*<<< orphan*/  tls; } ;
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct vlc_h2_frame*) ; 
 struct vlc_h2_frame* FUNC1 (struct vlc_h2_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_h2_output*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC5(void *data)
{
    struct vlc_h2_output *out = data;
    struct vlc_h2_frame *frame;

    while ((frame = FUNC1(out)) != NULL)
    {
        if (FUNC0(out->tls, frame))
        {   /* The connection failed asynchronously. The caller will be
             * notified at the next attempt to queue (as with TCP sockets). */
            FUNC3(&out->lock);
            out->failed = true;
            FUNC4(&out->lock);

            /* The caller will leave the queues alone from now on until this
             * thread ends. The queues are flushed to free memory. */
            FUNC2(out);
            out->prio.first = NULL;
            out->prio.last = &out->prio.first;
            out->queue.first = NULL;
            out->queue.last = &out->queue.first;
            break;
        }
    }

    return NULL;
}