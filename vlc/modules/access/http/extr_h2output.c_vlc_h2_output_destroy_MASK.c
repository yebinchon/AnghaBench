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
struct vlc_h2_output {int closing; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_h2_output*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct vlc_h2_output *out)
{
    FUNC7(&out->lock);
    out->closing = true;
    FUNC3(&out->wait);
    FUNC8(&out->lock);

    FUNC1(out->thread);
    FUNC5(out->thread, NULL);

    FUNC2(&out->wait);
    FUNC6(&out->lock);
    /* Flush queues in case the thread was terminated within poll() and some
     * packets were still queued. */
    FUNC4(out);
    FUNC0(out);
}