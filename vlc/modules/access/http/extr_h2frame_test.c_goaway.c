
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int VLC_H2_NO_ERROR ;
 struct vlc_h2_frame* vlc_h2_frame_goaway (int ,int ) ;

__attribute__((used)) static struct vlc_h2_frame *goaway(void)
{
    return vlc_h2_frame_goaway(0, VLC_H2_NO_ERROR);
}
