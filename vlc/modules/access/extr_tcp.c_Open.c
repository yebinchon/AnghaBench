
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_port; int * psz_host; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_tls_t ;
typedef int vlc_object_t ;
struct TYPE_7__ {int * pf_seek; int pf_control; int * pf_block; int pf_read; int * p_sys; int psz_location; int psz_url; } ;
typedef TYPE_2__ stream_t ;


 int Control ;
 int Read ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_2__*,char*,int ) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParse (TYPE_1__*,int ) ;
 int * vlc_tls_SocketOpenTCP (int *,int *,scalar_t__) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    vlc_tls_t *sock;
    vlc_url_t url;

    if (vlc_UrlParse(&url, access->psz_url)
     || url.psz_host == ((void*)0) || url.i_port == 0)
    {
        msg_Err(access, "invalid location: %s", access->psz_location);
        vlc_UrlClean(&url);
        return VLC_EGENERIC;
    }

    sock = vlc_tls_SocketOpenTCP(obj, url.psz_host, url.i_port);
    vlc_UrlClean(&url);
    if (sock == ((void*)0))
        return VLC_EGENERIC;

    access->p_sys = sock;
    access->pf_read = Read;
    access->pf_block = ((void*)0);
    access->pf_control = Control;
    access->pf_seek = ((void*)0);
    return VLC_SUCCESS;
}
