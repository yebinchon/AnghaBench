
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 size_t vlc_h2_frame_length (struct vlc_h2_frame const*) ;

size_t vlc_h2_frame_size(const struct vlc_h2_frame *f)
{
    return 9 + vlc_h2_frame_length(f);
}
