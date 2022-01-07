
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int i_command; int b_eof; } ;
typedef TYPE_2__ access_sys_t ;


 int MMS_PACKET_ANY ;
 int MMS_PACKET_CMD ;
 int MMS_PACKET_HEADER ;
 int MMS_RETRY_MAX ;
 int mms_ReceivePacket (TYPE_1__*) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int msg_Warn (TYPE_1__*,char*,...) ;

__attribute__((used)) static int mms_HeaderMediaRead( stream_t *p_access, int i_type )
{
    access_sys_t *p_sys = p_access->p_sys;
    int i_count;

    for( i_count = 0; i_count < MMS_RETRY_MAX; )
    {
        int i_status;

        i_status = mms_ReceivePacket( p_access );
        if( i_status < 0 )
        {
            i_count++;
            msg_Warn( p_access, "cannot receive header (%d/%d)",
                      i_count, MMS_RETRY_MAX );
        }
        else if( i_status == i_type || i_type == MMS_PACKET_ANY )
        {
            return i_type;
        }
        else if( i_status == MMS_PACKET_CMD )
        {
            switch( p_sys->i_command )
            {
                case 0x03:
                    msg_Warn( p_access, "socket closed by server" );
                    p_sys->b_eof = 1;
                    return -1;
                case 0x1e:
                    msg_Warn( p_access, "end of media stream" );
                    p_sys->b_eof = 1;
                    return -1;
                case 0x20:



                    msg_Err( p_access,
                             "reinitialization needed --> unsupported" );
                    p_sys->b_eof = 1;
                    return -1;
                default:
                    break;
            }
        }
    }

    msg_Err( p_access, "cannot receive %s (aborting)",
             ( i_type == MMS_PACKET_HEADER ) ? "header" : "media data" );
    p_sys->b_eof = 1;
    return -1;
}
