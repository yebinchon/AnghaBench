
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int libvlc_video_set_crop (int *,char*) ;
 int sprintf (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

void libvlc_video_set_crop_border(libvlc_media_player_t *mp,
                                  unsigned left, unsigned right,
                                  unsigned top, unsigned bottom)
{
    char geometry[4 * (3 * sizeof (unsigned) + 1)];

    sprintf(geometry, "%u+%u+%u+%u", left, top, right, bottom);
    libvlc_video_set_crop(mp, geometry);
}
