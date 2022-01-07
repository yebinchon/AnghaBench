
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_17__ {int psz_name; int psz_url; TYPE_3__* p_sys; int pf_seek; int pf_control; int pf_block; int * pf_read; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_16__ {scalar_t__ i_data_packets_count; } ;
struct TYPE_19__ {char* psz_host; int i_port; } ;
struct TYPE_18__ {scalar_t__ i_packet_count; int i_flags_broadcast; int b_seekable; int i_size; int b_keep_alive; scalar_t__ i_packet_length; scalar_t__ i_header; TYPE_1__ asfh; TYPE_4__ url; int lock_netwrite; int i_timeout; } ;
typedef TYPE_3__ access_sys_t ;


 int Block ;
 int Control ;
 int MMSOpen (TYPE_2__*,TYPE_4__*,int) ;
 scalar_t__ MMSStart (TYPE_2__*,int) ;
 int MMSTUClose (TYPE_2__*) ;
 int MMS_PROTO_AUTO ;
 int MMS_PROTO_TCP ;
 int MMS_PROTO_UDP ;
 int Seek ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int msg_Dbg (TYPE_2__*,char*,char*,int) ;
 int msg_Err (TYPE_2__*,char*) ;
 int strncmp (int ,char*,int) ;
 int var_CreateGetInteger (TYPE_2__*,char*) ;
 int vlc_UrlClean (TYPE_4__*) ;
 int vlc_UrlParse (TYPE_4__*,int ) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;

int MMSTUOpen( stream_t *p_access )
{
    access_sys_t *p_sys;
    int i_proto;
    int i_status;


    p_access->pf_read = ((void*)0);
    p_access->pf_block = Block;
    p_access->pf_control = Control;
    p_access->pf_seek = Seek;

    p_access->p_sys = p_sys = calloc( 1, sizeof( access_sys_t ) );
    if( !p_sys ) return VLC_ENOMEM;

    p_sys->i_timeout = var_CreateGetInteger( p_access, "mms-timeout" );

    vlc_mutex_init( &p_sys->lock_netwrite );


    vlc_UrlParse( &p_sys->url, p_access->psz_url );
    if( p_sys->url.psz_host == ((void*)0) || *p_sys->url.psz_host == '\0' )
    {
        msg_Err( p_access, "invalid server name" );
        vlc_UrlClean( &p_sys->url );
        vlc_mutex_destroy( &p_sys->lock_netwrite );
        free( p_sys );
        return VLC_EGENERIC;
    }
    if( p_sys->url.i_port <= 0 )
    {
        p_sys->url.i_port = 1755;
    }



    i_proto = MMS_PROTO_AUTO;
    if( !strncmp( p_access->psz_name, "mmsu", 4 ) )
    {
        i_proto = MMS_PROTO_UDP;
    }
    else if( !strncmp( p_access->psz_name, "mmst", 4 ) )
    {
        i_proto = MMS_PROTO_TCP;
    }


    if( i_proto == MMS_PROTO_AUTO )
    {
        i_status = MMSOpen( p_access, &p_sys->url, MMS_PROTO_TCP );
        if( i_status )
            i_status = MMSOpen( p_access, &p_sys->url, MMS_PROTO_UDP );
    }
    else
    {
        i_status = MMSOpen( p_access, &p_sys->url, i_proto );
    }

    if( i_status )
    {
        msg_Err( p_access, "cannot connect to server" );
        vlc_UrlClean( &p_sys->url );
        vlc_mutex_destroy( &p_sys->lock_netwrite );
        free( p_sys );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_access, "connected to %s:%d", p_sys->url.psz_host, p_sys->url.i_port );






    if( p_sys->i_packet_count <= 0 && p_sys->asfh.i_data_packets_count > 0 )
    {
        p_sys->i_packet_count = p_sys->asfh.i_data_packets_count;
    }
    if( p_sys->i_packet_count <= 0 || ( p_sys->i_flags_broadcast >> 24 ) == 0x02 )
    {
        p_sys->b_seekable = 0;
    }
    else
    {
        p_sys->b_seekable = 1;
        p_sys->i_size =
            (uint64_t)p_sys->i_header +
            (uint64_t)p_sys->i_packet_count * (uint64_t)p_sys->i_packet_length;
    }
    p_sys->b_keep_alive = 0;


    if( MMSStart( p_access, 0xffffffff ) < 0 )
    {
        msg_Err( p_access, "cannot start stream" );
        MMSTUClose ( p_access );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
