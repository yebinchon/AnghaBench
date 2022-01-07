
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int get_int (int *,char*,int ) ;
 int marq_option_bynumber (unsigned int) ;

int libvlc_video_get_marquee_int( libvlc_media_player_t *p_mi,
                                  unsigned option )
{
    return get_int( p_mi, "marq", marq_option_bynumber(option) );
}
