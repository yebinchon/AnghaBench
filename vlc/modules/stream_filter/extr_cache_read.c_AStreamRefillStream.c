
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_8__ {int i_end; int i_start; int * p_buffer; } ;
typedef TYPE_2__ stream_track_t ;
struct TYPE_9__ {int s; TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_7__ {int i_bytes; int i_read_time; int i_read_count; } ;
struct TYPE_10__ {size_t i_tk; int i_used; int i_offset; TYPE_1__ stat; TYPE_2__* tk; } ;
typedef TYPE_4__ stream_sys_t ;


 int STREAM_CACHE_TRACK_SIZE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int __MIN (int,int) ;
 int msg_Dbg (TYPE_3__*,char*,int,int) ;
 scalar_t__ vlc_killed () ;
 int vlc_stream_Read (int ,int *,int) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static int AStreamRefillStream(stream_t *s)
{
    stream_sys_t *sys = s->p_sys;
    stream_track_t *tk = &sys->tk[sys->i_tk];


    int i_toread =
        __MIN(sys->i_used, STREAM_CACHE_TRACK_SIZE -
               (tk->i_end - tk->i_start - sys->i_offset));

    if (i_toread <= 0) return VLC_SUCCESS;






    vlc_tick_t start = vlc_tick_now();
    while (i_toread > 0)
    {
        int i_off = tk->i_end % STREAM_CACHE_TRACK_SIZE;
        int i_read;

        if (vlc_killed())
            return VLC_EGENERIC;

        i_read = __MIN(i_toread, STREAM_CACHE_TRACK_SIZE - i_off);
        i_read = vlc_stream_Read(s->s, &tk->p_buffer[i_off], i_read);


        if (i_read < 0)
        {
            continue;
        }
        else if (i_read == 0)
            return VLC_SUCCESS;


        tk->i_end += i_read;


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

    sys->stat.i_read_time += vlc_tick_now() - start;
    return VLC_SUCCESS;
}
