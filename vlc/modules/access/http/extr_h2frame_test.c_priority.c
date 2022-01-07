
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_frame {int dummy; } ;


 int data (int) ;
 struct vlc_h2_frame* localize (int ) ;
 int resize (int ,int) ;
 int retype (int ,int) ;

__attribute__((used)) static struct vlc_h2_frame *priority(void)
{
    return localize(resize(retype(data(0), 0x2), 5));
}
