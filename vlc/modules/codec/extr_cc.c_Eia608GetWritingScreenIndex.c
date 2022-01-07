
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int i_screen; } ;
typedef TYPE_1__ eia608_t ;







 int vlc_assert_unreachable () ;

__attribute__((used)) static int Eia608GetWritingScreenIndex( eia608_t *h )
{
    switch( h->mode )
    {
    case 131:
        return 1 - h->i_screen;

    case 130:
    case 129:
    case 128:
    case 132:
        return h->i_screen;
    default:

        vlc_assert_unreachable();
        return 0;
    }
}
