
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int STREAM_ID ;
 int VLC_H2_CANCEL ;
 struct vlc_h2_frame* vlc_h2_frame_rst_stream (int ,int ) ;

__attribute__((used)) static struct vlc_h2_frame *rst_stream(void)
{
    return vlc_h2_frame_rst_stream(STREAM_ID, VLC_H2_CANCEL);
}
