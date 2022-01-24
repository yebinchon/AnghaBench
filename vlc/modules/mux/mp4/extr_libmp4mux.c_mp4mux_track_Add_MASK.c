#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {unsigned int i_track_id; int /*<<< orphan*/  fmt; int /*<<< orphan*/  i_timescale; } ;
typedef  TYPE_1__ mp4mux_trackinfo_t ;
struct TYPE_15__ {int /*<<< orphan*/  tracks; } ;
typedef  TYPE_2__ mp4mux_handle_t ;
struct TYPE_16__ {int /*<<< orphan*/  i_codec; int /*<<< orphan*/  i_cat; } ;
typedef  TYPE_3__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

mp4mux_trackinfo_t * FUNC8(mp4mux_handle_t *h, unsigned id,
                                      const es_format_t *fmt, uint32_t timescale)
{
    if(FUNC6(id == 0))
        return NULL;
    mp4mux_trackinfo_t *t = FUNC3(sizeof(*t));
    if(!t || !FUNC5(t, 0, 0))
    {
        FUNC2(t);
        return NULL;
    }
    t->i_track_id = id;
    t->i_timescale = timescale;
    FUNC1(&t->fmt, fmt->i_cat, fmt->i_codec);
    FUNC0(&t->fmt, fmt);
    FUNC7(&h->tracks, t);
    FUNC4(h, fmt);
    return t;
}