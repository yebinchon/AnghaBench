
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* starts; int num_switchers; unsigned int* lengths; scalar_t__ cmd_list_length; TYPE_1__* switchers; } ;
struct TYPE_3__ {int mode; } ;
typedef int Mode ;
typedef TYPE_2__ CombiModePrivateData ;


 int FALSE ;
 int TRUE ;
 int combi_mode_parse_switchers (int *) ;
 void* g_malloc0 (int) ;
 unsigned int mode_get_num_entries (int ) ;
 int * mode_get_private_data (int *) ;
 int mode_init (int ) ;
 int mode_set_private_data (int *,void*) ;

__attribute__((used)) static int combi_mode_init ( Mode *sw )
{
    if ( mode_get_private_data ( sw ) == ((void*)0) ) {
        CombiModePrivateData *pd = g_malloc0 ( sizeof ( *pd ) );
        mode_set_private_data ( sw, (void *) pd );
        combi_mode_parse_switchers ( sw );
        pd->starts = g_malloc0 ( sizeof ( int ) * pd->num_switchers );
        pd->lengths = g_malloc0 ( sizeof ( int ) * pd->num_switchers );
        for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
            if ( !mode_init ( pd->switchers[i].mode ) ) {
                return FALSE;
            }
        }
        if ( pd->cmd_list_length == 0 ) {
            pd->cmd_list_length = 0;
            for ( unsigned int i = 0; i < pd->num_switchers; i++ ) {
                unsigned int length = mode_get_num_entries ( pd->switchers[i].mode );
                pd->starts[i] = pd->cmd_list_length;
                pd->lengths[i] = length;
                pd->cmd_list_length += length;
            }
        }
    }
    return TRUE;
}
