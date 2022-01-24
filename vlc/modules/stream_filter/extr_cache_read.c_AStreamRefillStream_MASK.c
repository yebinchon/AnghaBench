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
struct TYPE_8__ {int i_end; int i_start; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_2__ stream_track_t ;
struct TYPE_9__ {int /*<<< orphan*/  s; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_7__ {int i_bytes; int /*<<< orphan*/  i_read_time; int /*<<< orphan*/  i_read_count; } ;
struct TYPE_10__ {size_t i_tk; int i_used; int i_offset; TYPE_1__ stat; TYPE_2__* tk; } ;
typedef  TYPE_4__ stream_sys_t ;

/* Variables and functions */
 int STREAM_CACHE_TRACK_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int,int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(stream_t *s)
{
    stream_sys_t *sys = s->p_sys;
    stream_track_t *tk = &sys->tk[sys->i_tk];

    /* We read but won't increase i_start after initial start + offset */
    int i_toread =
        FUNC0(sys->i_used, STREAM_CACHE_TRACK_SIZE -
               (tk->i_end - tk->i_start - sys->i_offset));

    if (i_toread <= 0) return VLC_SUCCESS; /* EOF */

#ifdef STREAM_DEBUG
    msg_Dbg(s, "AStreamRefillStream: used=%d toread=%d",
                 sys->i_used, i_toread);
#endif

    vlc_tick_t start = FUNC4();
    while (i_toread > 0)
    {
        int i_off = tk->i_end % STREAM_CACHE_TRACK_SIZE;
        int i_read;

        if (FUNC2())
            return VLC_EGENERIC;

        i_read = FUNC0(i_toread, STREAM_CACHE_TRACK_SIZE - i_off);
        i_read = FUNC3(s->s, &tk->p_buffer[i_off], i_read);

        /* msg_Dbg(s, "AStreamRefillStream: read=%d", i_read); */
        if (i_read <  0)
        {
            continue;
        }
        else if (i_read == 0)
            return VLC_SUCCESS;

        /* Update end */
        tk->i_end += i_read;

        /* Windows of STREAM_CACHE_TRACK_SIZE */
        if (tk->i_start + STREAM_CACHE_TRACK_SIZE < tk->i_end)
        {
            unsigned i_invalid = tk->i_end - tk->i_start - STREAM_CACHE_TRACK_SIZE;

            tk->i_start += i_invalid;
            sys->i_offset -= i_invalid;
        }

        i_toread -= i_read;
        sys->i_used -= i_read;

        sys->stat.i_bytes += i_read;
        sys->stat.i_read_count++;
    }

    sys->stat.i_read_time += FUNC4() - start;
    return VLC_SUCCESS;
}