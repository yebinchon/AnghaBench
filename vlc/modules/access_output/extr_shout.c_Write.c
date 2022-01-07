
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_11__ {int p_shout; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_12__ {scalar_t__ i_buffer; int p_buffer; struct TYPE_12__* p_next; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ SHOUTERR_SUCCESS ;
 size_t VLC_EGENERIC ;
 int block_ChainRelease (TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int shout_close (int ) ;
 int shout_get_error (int ) ;
 scalar_t__ shout_open (int ) ;
 scalar_t__ shout_send (int ,int ,scalar_t__) ;
 int shout_sync (int ) ;

__attribute__((used)) static ssize_t Write( sout_access_out_t *p_access, block_t *p_buffer )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    size_t i_write = 0;

    shout_sync( p_sys->p_shout );
    while( p_buffer )
    {
        block_t *p_next = p_buffer->p_next;

        if( shout_send( p_sys->p_shout, p_buffer->p_buffer, p_buffer->i_buffer )
             == SHOUTERR_SUCCESS )
        {
            i_write += p_buffer->i_buffer;
        }
        else
        {
            msg_Err( p_access, "cannot write to stream: %s",
                     shout_get_error( p_sys->p_shout ) );





            shout_close( p_sys->p_shout );
            msg_Warn( p_access, "server unavailable? trying to reconnect..." );

            if( shout_open( p_sys->p_shout ) == SHOUTERR_SUCCESS )
            {
                shout_sync( p_sys->p_shout );
                msg_Warn( p_access, "reconnected to server" );
            }
            else
            {
                msg_Err( p_access, "failed to reconnect to server" );
                block_ChainRelease( p_buffer );
                return VLC_EGENERIC;
            }

        }
        block_Release( p_buffer );



        p_buffer = p_next;
    }

    return i_write;
}
