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
struct vlc_tls {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ ** last; } ;
struct TYPE_3__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ ** last; } ;
struct vlc_h2_output {int failed; int closing; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  thread; scalar_t__ size; TYPE_2__ queue; TYPE_1__ prio; struct vlc_tls* tls; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_output*) ; 
 struct vlc_h2_output* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void* (*) (void*),struct vlc_h2_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (void*) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct vlc_h2_output *FUNC10(struct vlc_tls *tls, bool client)
{
    struct vlc_h2_output *out = FUNC1(sizeof (*out));
    if (FUNC2(out == NULL))
        return NULL;

    out->tls = tls;

    out->prio.first = NULL;
    out->prio.last = &out->prio.first;
    out->queue.first = NULL;
    out->queue.last = &out->queue.first;
    out->size = 0;
    out->failed = false;
    out->closing = false;

    FUNC9(&out->lock);
    FUNC5(&out->wait);

    void *(*cb)(void *) = client ? vlc_h2_client_output_thread
                                 : vlc_h2_output_thread;
    if (FUNC3(&out->thread, cb, out, VLC_THREAD_PRIORITY_INPUT))
    {
        FUNC4(&out->wait);
        FUNC8(&out->lock);
        FUNC0(out);
        out = NULL;
    }
    return out;
}