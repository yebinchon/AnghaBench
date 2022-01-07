
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_switchers; struct TYPE_3__* switchers; int mode; struct TYPE_3__* lengths; struct TYPE_3__* starts; } ;
typedef int Mode ;
typedef TYPE_1__ CombiModePrivateData ;


 int g_free (TYPE_1__*) ;
 int mode_destroy (int ) ;
 scalar_t__ mode_get_private_data (int *) ;
 int mode_set_private_data (int *,int *) ;

__attribute__((used)) static void combi_mode_destroy ( Mode *sw )
{
    CombiModePrivateData *pd = (CombiModePrivateData *) mode_get_private_data ( sw );
    if ( pd != ((void*)0) ) {
        g_free ( pd->starts );
        g_free ( pd->lengths );

        for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
            mode_destroy ( pd->switchers[i].mode );
        }
        g_free ( pd->switchers );
        g_free ( pd );
        mode_set_private_data ( sw, ((void*)0) );
    }
}
