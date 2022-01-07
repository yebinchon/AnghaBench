
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int libvlc_video_set_crop (int *,char*) ;
 int sprintf (char*,char*,unsigned int,unsigned int) ;

void libvlc_video_set_crop_ratio(libvlc_media_player_t *mp,
                                 unsigned num, unsigned den)
{
    char geometry[2 * (3 * sizeof (unsigned) + 1)];

    if (den == 0)
        geometry[0] = '\0';
    else
        sprintf(geometry, "%u:%u", num, den);

    libvlc_video_set_crop(mp, geometry);
}
