
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_10__ {TYPE_2__* p_hdlr; } ;
struct TYPE_11__ {int i_size; int i_handler; scalar_t__ i_type; struct TYPE_11__* p_next; TYPE_3__ data; TYPE_1__* p_father; } ;
struct TYPE_9__ {int i_handler_type; } ;
struct TYPE_8__ {TYPE_4__* p_first; } ;
typedef TYPE_4__ MP4_Box_t ;


 scalar_t__ ATOM_hdlr ;


 int MP4_ReadBoxContainerChildren (int *,TYPE_4__*,int *) ;
 int MP4_ReadBoxContainerChildrenIndexed (int *,TYPE_4__*,int *,int *,int) ;
 int msg_Warn (int *,char*,...) ;
 int vlc_stream_Read (int *,int *,int) ;

__attribute__((used)) static int MP4_ReadBox_ilst( stream_t *p_stream, MP4_Box_t *p_box )
{
    if( p_box->i_size < 8 || vlc_stream_Read( p_stream, ((void*)0), 8 ) < 8 )
        return 0;


    if ( !p_box->i_handler && p_box->p_father )
    {
        const MP4_Box_t *p_sibling = p_box->p_father->p_first;
        while( p_sibling )
        {
            if ( p_sibling->i_type == ATOM_hdlr && p_sibling->data.p_hdlr )
            {
                p_box->i_handler = p_sibling->data.p_hdlr->i_handler_type;
                break;
            }
            p_sibling = p_sibling->p_next;
        }
    }

    switch( p_box->i_handler )
    {
    case 0:
        msg_Warn( p_stream, "no handler for ilst atom" );
        return 0;
    case 128:
        return MP4_ReadBoxContainerChildrenIndexed( p_stream, p_box, ((void*)0), ((void*)0), 1 );
    case 129:
        return MP4_ReadBoxContainerChildren( p_stream, p_box, ((void*)0) );
    default:
        msg_Warn( p_stream, "Unknown ilst handler type '%4.4s'", (char*)&p_box->i_handler );
        return 0;
    }
}
