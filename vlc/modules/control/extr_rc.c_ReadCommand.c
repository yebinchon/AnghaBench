
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_7__ {int i_socket; int b_quiet; } ;


 int INTF_IDLE_SLEEP ;
 int MAX_LINE_LENGTH ;
 int ReadWin32 (TYPE_2__*,unsigned char*,int*) ;
 int libvlc_Quit (int ) ;
 int net_Close (int) ;
 scalar_t__ net_Read (TYPE_2__*,int,char*,int) ;
 scalar_t__ read (int ,char*,int) ;
 int vlc_object_instance (TYPE_2__*) ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static bool ReadCommand(intf_thread_t *p_intf, char *p_buffer, int *pi_size)
{
    while( *pi_size < MAX_LINE_LENGTH )
    {
        if( p_intf->p_sys->i_socket == -1 )
        {
            if( read( 0 , p_buffer + *pi_size, 1 ) <= 0 )
            {
                libvlc_Quit( vlc_object_instance(p_intf) );
                p_buffer[*pi_size] = 0;
                return 1;
            }
        }
        else
        {
            if( net_Read( p_intf, p_intf->p_sys->i_socket, p_buffer + *pi_size,
                          1 ) <= 0 )
            {
                net_Close( p_intf->p_sys->i_socket );
                p_intf->p_sys->i_socket = -1;
                p_buffer[*pi_size] = 0;
                return 1;
            }
        }

        if( p_buffer[ *pi_size ] == '\r' || p_buffer[ *pi_size ] == '\n' )
            break;

        (*pi_size)++;
    }

    if( *pi_size == MAX_LINE_LENGTH ||
        p_buffer[ *pi_size ] == '\r' || p_buffer[ *pi_size ] == '\n' )
    {
        p_buffer[ *pi_size ] = 0;
        return 1;
    }

    return 0;
}
