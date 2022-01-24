#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int position; scalar_t__ time; scalar_t__ length; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * writer; int /*<<< orphan*/  reader; int /*<<< orphan*/  thread; int /*<<< orphan*/  name; int /*<<< orphan*/ * out; TYPE_1__ stats; } ;
typedef  TYPE_2__ vlc_demux_chained_t ;
typedef  int /*<<< orphan*/  es_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_INPUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_demux_chained_Thread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

vlc_demux_chained_t *FUNC11(vlc_object_t *parent,
                                           const char *name, es_out_t *out)
{
    vlc_demux_chained_t *dc = FUNC1(sizeof (*dc) + FUNC3(name) + 1);
    if (FUNC4(dc == NULL))
        return NULL;

    dc->writer = FUNC10(parent, &dc->reader);
    if (dc->writer == NULL)
    {
        FUNC0(dc);
        return NULL;
    }

    dc->stats.position = 0.;
    dc->stats.length = 0;
    dc->stats.time = 0;
    dc->out = out;
    FUNC2(dc->name, name);

    FUNC7(&dc->lock);

    if (FUNC5(&dc->thread, vlc_demux_chained_Thread, dc,
                  VLC_THREAD_PRIORITY_INPUT))
    {
        FUNC8(dc->reader);
        FUNC9(dc->writer);
        FUNC6(&dc->lock);
        FUNC0(dc);
        dc = NULL;
    }
    return dc;
}