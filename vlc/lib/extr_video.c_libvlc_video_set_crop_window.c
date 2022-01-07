
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 int assert (int) ;
 int libvlc_video_set_crop (int *,char*) ;
 int sprintf (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

void libvlc_video_set_crop_window(libvlc_media_player_t *mp,
                                  unsigned x, unsigned y,
                                  unsigned width, unsigned height)
{
    char geometry[4 * (3 * sizeof (unsigned) + 1)];

    assert(width != 0 && height != 0);
    sprintf(geometry, "%ux%u+%u+%u", x, y, width, height);
    libvlc_video_set_crop(mp, geometry);
}
