
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_stream_t ;
struct TYPE_9__ {int * p_httpd_file; scalar_t__ p_httpd_host; } ;
typedef TYPE_3__ sout_stream_sys_t ;


 int HttpCallback ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int * httpd_FileNew (scalar_t__,char*,char*,int *,int *,int ,void*) ;
 scalar_t__ vlc_http_HostNew (int ) ;

__attribute__((used)) static int HttpSetup( sout_stream_t *p_stream, const vlc_url_t *url)
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    p_sys->p_httpd_host = vlc_http_HostNew( VLC_OBJECT(p_stream) );
    if( p_sys->p_httpd_host )
    {
        p_sys->p_httpd_file = httpd_FileNew( p_sys->p_httpd_host,
                                             url->psz_path ? url->psz_path : "/",
                                             "application/sdp",
                                             ((void*)0), ((void*)0),
                                             HttpCallback, (void*)p_sys );
    }
    if( p_sys->p_httpd_file == ((void*)0) )
    {
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
