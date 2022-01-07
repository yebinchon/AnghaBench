
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int played; int buffer_size; int wave_len; int offset; int written; int dsbo; } ;
typedef TYPE_1__ play_state_t ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer_GetCurrentPosition (int ,int*,int *) ;
 scalar_t__ IDirectSoundBuffer_Stop (int ) ;
 int buffer_refill8 (TYPE_1__*,int) ;
 int buffer_silence8 (TYPE_1__*,int) ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*,...) ;
 int winetest_debug ;

__attribute__((used)) static int buffer_service8(play_state_t* state)
{
    DWORD last_play_pos,play_pos,buf_free;
    HRESULT rc;

    rc=IDirectSoundBuffer_GetCurrentPosition(state->dsbo,&play_pos,((void*)0));
    ok(rc==DS_OK,"IDirectSoundBuffer_GetCurrentPosition() failed: %08x\n", rc);
    if (rc!=DS_OK) {
        goto STOP;
    }


    last_play_pos=state->played % state->buffer_size;
    if (play_pos<last_play_pos)
        state->played+=state->buffer_size-last_play_pos+play_pos;
    else
        state->played+=play_pos-last_play_pos;

    if (winetest_debug > 1)
        trace("buf size=%d last_play_pos=%d play_pos=%d played=%d / %d\n",
              state->buffer_size,last_play_pos,play_pos,state->played,
              state->wave_len);

    if (state->played>state->wave_len)
    {

        goto STOP;
    }


    if (state->offset<=play_pos)
        buf_free=play_pos-state->offset;
    else
        buf_free=state->buffer_size-state->offset+play_pos;

    if (winetest_debug > 1)
        trace("offset=%d free=%d written=%d / %d\n",
              state->offset,buf_free,state->written,state->wave_len);
    if (buf_free==0)
        return 1;

    if (state->written<state->wave_len)
    {
        int w=buffer_refill8(state,buf_free);
        if (w==-1)
            goto STOP;
        buf_free-=w;
        if (state->written==state->wave_len && winetest_debug > 1)
            trace("last sound byte at %d\n",
                  (state->written % state->buffer_size));
    }

    if (buf_free>0) {

        if (winetest_debug > 1)
            trace("writing %d bytes of silence\n",buf_free);
        if (buffer_silence8(state,buf_free)==-1)
            goto STOP;
    }
    return 1;

STOP:
    if (winetest_debug > 1)
        trace("stopping playback\n");
    rc=IDirectSoundBuffer_Stop(state->dsbo);
    ok(rc==DS_OK,"IDirectSoundBuffer_Stop() failed: %08x\n", rc);
    return 0;
}
