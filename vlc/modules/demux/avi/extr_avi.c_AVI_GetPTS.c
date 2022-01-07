
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef unsigned int int64_t ;
struct TYPE_9__ {scalar_t__ i_cat; } ;
struct TYPE_8__ {unsigned int i_size; TYPE_1__* p_entry; } ;
struct TYPE_10__ {unsigned int i_idxposc; unsigned int i_idxposb; unsigned int i_blockno; TYPE_3__ fmt; TYPE_2__ idx; scalar_t__ i_samplesize; } ;
typedef TYPE_4__ avi_track_t ;
struct TYPE_7__ {unsigned int i_lengthtotal; unsigned int i_length; } ;


 scalar_t__ AUDIO_ES ;
 int AVI_GetDPTS (TYPE_4__*,unsigned int) ;

__attribute__((used)) static vlc_tick_t AVI_GetPTS( avi_track_t *tk )
{

    if( tk->i_samplesize && tk->idx.i_size )
    {
        int64_t i_count = 0;
        unsigned int idx = tk->i_idxposc;


        if( idx >= tk->idx.i_size )
        {

            idx = tk->idx.i_size - 1;
            i_count = tk->idx.p_entry[idx].i_lengthtotal
                    + tk->idx.p_entry[idx].i_length;
        }
        else
        {
            i_count = tk->idx.p_entry[idx].i_lengthtotal;
        }
        return AVI_GetDPTS( tk, i_count + tk->i_idxposb );
    }

    if( tk->fmt.i_cat == AUDIO_ES )
        return AVI_GetDPTS( tk, tk->i_blockno );
    else
        return AVI_GetDPTS( tk, tk->i_idxposc );
}
