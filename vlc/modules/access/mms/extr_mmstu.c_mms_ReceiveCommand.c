
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {scalar_t__ i_buffer_tcp; int i_command; scalar_t__ buffer_tcp; } ;
typedef TYPE_2__ access_sys_t ;


 size_t MMS_BUFFER_SIZE ;
 scalar_t__ NetFillBuffer (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memmove (scalar_t__,scalar_t__,size_t) ;
 int mms_CommandSend (TYPE_1__*,int,int ,int ,int *,int ) ;
 int mms_ParseCommand (TYPE_1__*,scalar_t__,scalar_t__,size_t*) ;
 int msg_Warn (TYPE_1__*,char*) ;

__attribute__((used)) static int mms_ReceiveCommand( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    for( ;; )
    {
        size_t i_used;
        int i_status;

        if( NetFillBuffer( p_access ) < 0 )
        {
            msg_Warn( p_access, "cannot fill buffer" );
            return VLC_EGENERIC;
        }
        if( p_sys->i_buffer_tcp > 0 )
        {
            i_status = mms_ParseCommand( p_access, p_sys->buffer_tcp,
                                         p_sys->i_buffer_tcp, &i_used );
            if( i_used < MMS_BUFFER_SIZE )
            {
                memmove( p_sys->buffer_tcp, p_sys->buffer_tcp + i_used,
                         MMS_BUFFER_SIZE - i_used );
            }
            p_sys->i_buffer_tcp -= i_used;

            if( i_status < 0 )
            {
                return VLC_EGENERIC;
            }

            if( p_sys->i_command == 0x1b )
            {
                mms_CommandSend( p_access, 0x1b, 0, 0, ((void*)0), 0 );
            }
            else
            {
                break;
            }
        }
        else
        {
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
