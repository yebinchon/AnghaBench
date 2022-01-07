
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int STREAM_ID ;
 int resp_hdrc ;
 int resp_hdrv ;
 struct vlc_h2_frame* vlc_h2_frame_headers (int ,int,int,int ,int ) ;

__attribute__((used)) static struct vlc_h2_frame *response(bool eos)
{

    return vlc_h2_frame_headers(STREAM_ID, 16, eos, resp_hdrc, resp_hdrv);
}
