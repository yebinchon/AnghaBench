
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * private_data; } ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;

void mode_set_private_data ( Mode *mode, void *pd )
{
    g_assert ( mode != ((void*)0) );
    if ( pd != ((void*)0) ) {
        g_assert ( mode->private_data == ((void*)0) );
    }
    mode->private_data = pd;
}
