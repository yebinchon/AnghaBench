
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
typedef int libvlc_media_slave_type_t ;
typedef int input_item_t ;
typedef int input_item_slave_t ;
typedef enum slave_type { ____Placeholder_slave_type } slave_type ;
typedef enum slave_priority { ____Placeholder_slave_priority } slave_priority ;


 int SLAVE_PRIORITY_MATCH_ALL ;
 int SLAVE_PRIORITY_MATCH_LEFT ;
 int SLAVE_PRIORITY_MATCH_NONE ;
 int SLAVE_PRIORITY_MATCH_RIGHT ;
 int SLAVE_PRIORITY_USER ;
 int SLAVE_TYPE_AUDIO ;
 int SLAVE_TYPE_SPU ;
 scalar_t__ VLC_SUCCESS ;
 int assert (int) ;
 scalar_t__ input_item_AddSlave (int *,int *) ;
 int * input_item_slave_New (char const*,int,int) ;


 int vlc_assert_unreachable () ;

int libvlc_media_slaves_add( libvlc_media_t *p_md,
                             libvlc_media_slave_type_t i_type,
                             unsigned int i_priority,
                             const char *psz_uri )
{
    assert( p_md && psz_uri );
    input_item_t *p_input_item = p_md->p_input_item;

    enum slave_type i_input_slave_type;
    switch( i_type )
    {
    case 128:
        i_input_slave_type = SLAVE_TYPE_SPU;
        break;
    case 129:
        i_input_slave_type = SLAVE_TYPE_AUDIO;
        break;
    default:
        vlc_assert_unreachable();
        return -1;
    }

    enum slave_priority i_input_slave_priority;
    switch( i_priority )
    {
    case 0:
        i_input_slave_priority = SLAVE_PRIORITY_MATCH_NONE;
        break;
    case 1:
        i_input_slave_priority = SLAVE_PRIORITY_MATCH_RIGHT;
        break;
    case 2:
        i_input_slave_priority = SLAVE_PRIORITY_MATCH_LEFT;
        break;
    case 3:
        i_input_slave_priority = SLAVE_PRIORITY_MATCH_ALL;
        break;
    default:
    case 4:
        i_input_slave_priority = SLAVE_PRIORITY_USER;
        break;
    }

    input_item_slave_t *p_slave = input_item_slave_New( psz_uri,
                                                      i_input_slave_type,
                                                      i_input_slave_priority );
    if( p_slave == ((void*)0) )
        return -1;
    return input_item_AddSlave( p_input_item, p_slave ) == VLC_SUCCESS ? 0 : -1;
}
