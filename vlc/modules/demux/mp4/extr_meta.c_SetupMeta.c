
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef int uint32_t ;
struct TYPE_8__ {int i_handler; scalar_t__ p_father; struct TYPE_8__* p_next; struct TYPE_8__* p_first; } ;
typedef TYPE_1__ MP4_Box_t ;





 TYPE_1__* MP4_BoxGet (scalar_t__,char*) ;
 int SetupID3v2Meta (int *,TYPE_1__*) ;
 int SetupmdirMeta (int *,TYPE_1__*) ;
 int SetupmdtaMeta (int *,TYPE_1__*,TYPE_1__*) ;

void SetupMeta( vlc_meta_t *p_meta, MP4_Box_t *p_udta )
{
    uint32_t i_handler = 0;
    if ( p_udta->p_father )
        i_handler = p_udta->i_handler;

    for( MP4_Box_t *p_box = p_udta->p_first; p_box; p_box = p_box->p_next )
    {
        switch( i_handler )
        {
            case 128:
            {
                MP4_Box_t *p_keys = MP4_BoxGet( p_udta->p_father, "keys" );
                SetupmdtaMeta( p_meta, p_box, p_keys );
                break;
            }

            case 130:
                SetupID3v2Meta( p_meta, p_box );
                break;

            case 129:
            default:
                SetupmdirMeta( p_meta, p_box );
                break;
        }
    }
}
