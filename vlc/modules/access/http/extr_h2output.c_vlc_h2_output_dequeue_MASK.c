#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_h2_queue {struct vlc_h2_frame** last; struct vlc_h2_frame* first; } ;
struct vlc_h2_output {size_t size; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  closing; struct vlc_h2_queue queue; struct vlc_h2_queue prio; } ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 

__attribute__((used)) static struct vlc_h2_frame *FUNC8(struct vlc_h2_output *out)
{
    struct vlc_h2_queue *q;
    struct vlc_h2_frame *frame;
    size_t len;

    FUNC4(&out->lock);

    for (;;)
    {
        q = &out->prio;
        if (q->first != NULL)
            break;

        q = &out->queue;
        if (q->first != NULL)
            break;

        if (FUNC1(out->closing))
        {
            FUNC5(&out->lock);
            return NULL;
        }

        int canc = FUNC7();
        FUNC2(&out->wait, &out->lock);
        FUNC6(canc);
    }

    frame = q->first;
    q->first = frame->next;
    if (frame->next == NULL)
    {
        FUNC0(q->last == &frame->next);
        q->last = &q->first;
    }
    FUNC0(q->last != &frame->next);

    len = FUNC3(frame);
    FUNC0(out->size >= len);
    out->size -= len;

    FUNC5(&out->lock);

    frame->next = NULL;
    return frame;
}