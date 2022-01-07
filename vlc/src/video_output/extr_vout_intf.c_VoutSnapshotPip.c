
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_4__ {int b_ephemer; int b_fade; int i_original_picture_width; int i_original_picture_height; scalar_t__ i_start; scalar_t__ i_stop; scalar_t__ i_channel; } ;
typedef TYPE_1__ subpicture_t ;
typedef int picture_t ;


 int VLC_CODEC_YUVA ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 TYPE_1__* subpicture_NewFromPicture (int ,int *,int ) ;
 scalar_t__ vlc_tick_now () ;
 int vout_PutSubpicture (int *,TYPE_1__*) ;

__attribute__((used)) static int VoutSnapshotPip( vout_thread_t *p_vout, picture_t *p_pic )
{
    subpicture_t *p_subpic = subpicture_NewFromPicture( VLC_OBJECT(p_vout),
                                                        p_pic, VLC_CODEC_YUVA );
    if( !p_subpic )
        return VLC_EGENERIC;



    p_subpic->i_channel = 0;
    p_subpic->i_start = vlc_tick_now();
    p_subpic->i_stop = p_subpic->i_start + VLC_TICK_FROM_SEC(4);
    p_subpic->b_ephemer = 1;
    p_subpic->b_fade = 1;


    p_subpic->i_original_picture_width *= 4;
    p_subpic->i_original_picture_height *= 4;

    vout_PutSubpicture( p_vout, p_subpic );
    return VLC_SUCCESS;
}
