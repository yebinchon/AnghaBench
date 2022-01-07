
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int pf_control; int pf_readdir; int s; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int b_rtsp_kasenna; int b_concert; scalar_t__ i_sid; scalar_t__ i_port; scalar_t__ i_duration; scalar_t__ i_packet_size; scalar_t__ i_mcast_port; int * psz_mcast_ip; int * psz_password; int * psz_user; int * psz_name; int * psz_location; int * psz_server; int * psz_uri; } ;
typedef TYPE_2__ demux_sys_t ;


 int CHECK_FILE (TYPE_1__*) ;
 int MAX_LINE ;
 int ReadDir ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ strncasecmp (char*,char*,unsigned int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Peek (int ,int const**,int ) ;

int Import_SGIMB( vlc_object_t * p_this )
{
    stream_t *p_demux = (stream_t *)p_this;
    const uint8_t *p_peek;
    int i_size;

    CHECK_FILE(p_demux);

    i_size = vlc_stream_Peek( p_demux->s, &p_peek, MAX_LINE );
    i_size -= sizeof("sgiNameServerHost=") - 1;
    if ( i_size > 0 )
    {
        unsigned int i_len = sizeof("sgiNameServerHost=") - 1;
        while ( i_size && strncasecmp( (char *)p_peek, "sgiNameServerHost=", i_len ) )
        {
            p_peek++;
            i_size--;
        }
        if ( !strncasecmp( (char *)p_peek, "sgiNameServerHost=", i_len ) )
        {
            demux_sys_t *p_sys = malloc(sizeof (*p_sys));
            if( unlikely(p_sys == ((void*)0)) )
                return VLC_ENOMEM;

            msg_Dbg( p_demux, "using SGIMB playlist reader" );
            p_demux->pf_readdir = ReadDir;
            p_demux->pf_control = access_vaDirectoryControlHelper;
            p_demux->p_sys = p_sys;
            p_sys->psz_uri = ((void*)0);
            p_sys->psz_server = ((void*)0);
            p_sys->psz_location = ((void*)0);
            p_sys->psz_name = ((void*)0);
            p_sys->psz_user = ((void*)0);
            p_sys->psz_password = ((void*)0);
            p_sys->psz_mcast_ip = ((void*)0);
            p_sys->i_mcast_port = 0;
            p_sys->i_packet_size = 0;
            p_sys->i_duration = 0;
            p_sys->i_port = 0;
            p_sys->i_sid = 0;
            p_sys->b_rtsp_kasenna = 0;
            p_sys->b_concert = 0;

            return VLC_SUCCESS;
        }
    }
    return VLC_EGENERIC;
}
