
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int PING_VALUE ;
 struct vlc_h2_frame* vlc_h2_frame_ping (int ) ;

__attribute__((used)) static struct vlc_h2_frame *ping(void)
{
    return vlc_h2_frame_ping(PING_VALUE);
}
