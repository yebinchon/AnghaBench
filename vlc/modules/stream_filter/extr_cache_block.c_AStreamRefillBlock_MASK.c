#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_8__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_10__ {size_t i_total; scalar_t__ p_chain; scalar_t__* pp_last; } ;
struct TYPE_7__ {size_t read_bytes; int /*<<< orphan*/  read_time; } ;
struct TYPE_9__ {TYPE_4__ cache; TYPE_1__ stat; } ;
typedef  TYPE_3__ stream_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 size_t STREAM_CACHE_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ const FUNC6 () ; 

__attribute__((used)) static int FUNC7(stream_t *s)
{
    stream_sys_t *sys = s->p_sys;
    size_t cache_size = sys->cache.i_total;

    /* Release data */
    if (cache_size >= STREAM_CACHE_SIZE)
    {
        FUNC0( &sys->cache );
        cache_size = sys->cache.i_total;
    }
    if (cache_size >= STREAM_CACHE_SIZE &&
        sys->cache.p_chain != *sys->cache.pp_last)
    {
        /* Enough data, don't read more */
        return VLC_SUCCESS;
    }

    /* Now read a new block */
    const vlc_tick_t start = FUNC6();
    block_t *b;

    for (;;)
    {
        if (FUNC3())
            return VLC_EGENERIC;

        /* Fetch a block */
        if ((b = FUNC5(s->s)))
            break;
        if (FUNC4(s->s))
            return VLC_EGENERIC;
    }
    sys->stat.read_time += FUNC6() - start;
    size_t added_bytes;
    FUNC2( b, NULL, &added_bytes, NULL );
    sys->stat.read_bytes += added_bytes;

    FUNC1( &sys->cache, b );
    return VLC_SUCCESS;
}