
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int assert (int ) ;
 struct vlc_h2_frame* vlc_h2_frame_data (int,unsigned char*,int,int) ;

__attribute__((used)) static struct vlc_h2_frame *frame(unsigned char c)
{
    struct vlc_h2_frame *f = vlc_h2_frame_data(1, &c, 1, 0);
    assert(f != ((void*)0));
    return f;
}
