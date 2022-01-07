
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int num_switchers; unsigned int* starts; unsigned int* lengths; TYPE_1__* switchers; } ;
struct TYPE_4__ {int mode; } ;
typedef int Mode ;
typedef TYPE_2__ CombiModePrivateData ;


 int g_assert_not_reached () ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,int ,char*) ;
 char* mode_get_completion (int ,unsigned int) ;
 int mode_get_name (int ) ;
 TYPE_2__* mode_get_private_data (int const*) ;

__attribute__((used)) static char * combi_get_completion ( const Mode *sw, unsigned int index )
{
    CombiModePrivateData *pd = mode_get_private_data ( sw );
    for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
        if ( index >= pd->starts[i] && index < ( pd->starts[i] + pd->lengths[i] ) ) {
            char *comp = mode_get_completion ( pd->switchers[i].mode, index - pd->starts[i] );
            char *mcomp = g_strdup_printf ( "!%s %s", mode_get_name ( pd->switchers[i].mode ), comp );
            g_free ( comp );
            return mcomp;
        }
    }

    g_assert_not_reached ();
    return ((void*)0);
}
