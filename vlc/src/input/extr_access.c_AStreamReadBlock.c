
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct vlc_access_stream_private {scalar_t__ input; } ;
struct input_stats {int input_bitrate; } ;
struct TYPE_10__ {struct TYPE_10__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_11__ {int i_buffer; } ;
typedef TYPE_2__ block_t ;
struct TYPE_12__ {struct input_stats* stats; } ;


 TYPE_7__* input_priv (scalar_t__) ;
 int input_rate_Add (int *,int ) ;
 scalar_t__ vlc_killed () ;
 scalar_t__ vlc_stream_Eof (TYPE_1__*) ;
 struct vlc_access_stream_private* vlc_stream_Private (TYPE_1__*) ;
 TYPE_2__* vlc_stream_ReadBlock (TYPE_1__*) ;

__attribute__((used)) static block_t *AStreamReadBlock(stream_t *s, bool *restrict eof)
{
    stream_t *access = s->p_sys;
    block_t * block;

    if (vlc_stream_Eof(access))
    {
        *eof = 1;
        return ((void*)0);
    }
    if (vlc_killed())
        return ((void*)0);

    block = vlc_stream_ReadBlock(access);

    if (block != ((void*)0))
    {
        struct vlc_access_stream_private *priv = vlc_stream_Private(s);
        struct input_stats *stats =
            priv->input ? input_priv(priv->input)->stats : ((void*)0);
        if (stats != ((void*)0))
            input_rate_Add(&stats->input_bitrate, block->i_buffer);
    }

    return block;
}
