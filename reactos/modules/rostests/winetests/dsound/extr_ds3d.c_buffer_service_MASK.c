#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int played; int buffer_size; int wave_len; int offset; int written; int /*<<< orphan*/  dsbo; } ;
typedef  TYPE_1__ play_state_t ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int winetest_debug ; 

__attribute__((used)) static int FUNC6(play_state_t* state)
{
    DWORD last_play_pos,play_pos,buf_free;
    HRESULT rc;

    rc=FUNC0(state->dsbo,&play_pos,NULL);
    FUNC4(rc==DS_OK,"IDirectSoundBuffer_GetCurrentPosition() failed: %08x\n", rc);
    if (rc!=DS_OK) {
        goto STOP;
    }

    /* Update the amount played */
    last_play_pos=state->played % state->buffer_size;
    if (play_pos<last_play_pos)
        state->played+=state->buffer_size-last_play_pos+play_pos;
    else
        state->played+=play_pos-last_play_pos;

    if (winetest_debug > 1)
        FUNC5("buf size=%d last_play_pos=%d play_pos=%d played=%d / %d\n",
              state->buffer_size,last_play_pos,play_pos,state->played,
              state->wave_len);

    if (state->played>state->wave_len)
    {
        /* Everything has been played */
        goto STOP;
    }

    /* Refill the buffer */
    if (state->offset<=play_pos)
        buf_free=play_pos-state->offset;
    else
        buf_free=state->buffer_size-state->offset+play_pos;

    if (winetest_debug > 1)
        FUNC5("offset=%d free=%d written=%d / %d\n",
              state->offset,buf_free,state->written,state->wave_len);
    if (buf_free==0)
        return 1;

    if (state->written<state->wave_len)
    {
        int w=FUNC2(state,buf_free);
        if (w==-1)
            goto STOP;
        buf_free-=w;
        if (state->written==state->wave_len && winetest_debug > 1)
            FUNC5("last sound byte at %d\n",
                  (state->written % state->buffer_size));
    }

    if (buf_free>0) {
        /* Fill with silence */
        if (winetest_debug > 1)
            FUNC5("writing %d bytes of silence\n",buf_free);
        if (FUNC3(state,buf_free)==-1)
            goto STOP;
    }
    return 1;

STOP:
    if (winetest_debug > 1)
        FUNC5("stopping playback\n");
    rc=FUNC1(state->dsbo);
    FUNC4(rc==DS_OK,"IDirectSoundBuffer_Stop() failed: %08x\n", rc);
    return 0;
}