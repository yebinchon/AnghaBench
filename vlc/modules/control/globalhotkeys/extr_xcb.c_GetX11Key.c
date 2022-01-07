
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int xcb_keysym_t ;
struct TYPE_2__ {unsigned int i_vlc; unsigned int i_x11; } ;


 unsigned int XK_VoidSymbol ;
 TYPE_1__* x11keys_to_vlckeys ;

__attribute__((used)) static xcb_keysym_t GetX11Key( unsigned i_vlc )
{

    if( i_vlc >= 32 && i_vlc <= 127 )
        return i_vlc;

    for( int i = 0; x11keys_to_vlckeys[i].i_vlc != 0; i++ )
    {
        if( x11keys_to_vlckeys[i].i_vlc == i_vlc )
            return x11keys_to_vlckeys[i].i_x11;
    }

    return XK_VoidSymbol;
}
