
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int i_data; int p_data; } ;
typedef TYPE_1__ var_buffer_t ;
typedef int uint32_t ;
struct TYPE_16__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_17__ {int i_media_packet_id_type; int i_command; int i_command_level; } ;
typedef TYPE_3__ access_sys_t ;


 int MMS_PACKET_MEDIA ;
 int mms_CommandRead (TYPE_2__*,int,int ) ;
 int mms_CommandSend (TYPE_2__*,int,int ,int,int ,int ) ;
 scalar_t__ mms_HeaderMediaRead (TYPE_2__*,int ) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*,int) ;
 int var_buffer_add32 (TYPE_1__*,int) ;
 int var_buffer_add64 (TYPE_1__*,int ) ;
 int var_buffer_add8 (TYPE_1__*,int) ;
 int var_buffer_free (TYPE_1__*) ;
 int var_buffer_initwrite (TYPE_1__*,int ) ;

__attribute__((used)) static int MMSStart( stream_t *p_access, uint32_t i_packet )
{
    access_sys_t *p_sys = p_access->p_sys;
    var_buffer_t buffer;


    var_buffer_initwrite( &buffer, 0 );
    var_buffer_add64( &buffer, 0 );
    var_buffer_add32( &buffer, 0xffffffff );
    var_buffer_add32( &buffer, i_packet );
    var_buffer_add8( &buffer, 0xff );
    var_buffer_add8( &buffer, 0xff );
    var_buffer_add8( &buffer, 0xff );
    var_buffer_add8( &buffer, 0x00 );
    var_buffer_add32( &buffer, p_sys->i_media_packet_id_type );

    mms_CommandSend( p_access, 0x07, p_sys->i_command_level, 0x0001ffff,
                     buffer.p_data, buffer.i_data );

    var_buffer_free( &buffer );

    mms_CommandRead( p_access, 0x05, 0 );

    if( p_sys->i_command != 0x05 )
    {
        msg_Err( p_access,
                 "unknown answer (0x%x instead of 0x05)",
                 p_sys->i_command );
        return -1;
    }
    else
    {

        if( mms_HeaderMediaRead( p_access, MMS_PACKET_MEDIA ) < 0 )
            return -1;
        msg_Dbg( p_access, "streaming started" );
        return 0;
    }
}
