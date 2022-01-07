
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_9__ {int p_context; } ;
typedef TYPE_1__ vlc_tls_st_t ;
struct TYPE_10__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vlc_tls_server_t ;
struct TYPE_11__ {int server_cert_chain; } ;
typedef TYPE_3__ vlc_tls_creds_sys_t ;
typedef scalar_t__ OSStatus ;


 scalar_t__ SSLSetCertificate (int ,int ) ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_UNUSED (char const* const*) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*) ;
 scalar_t__ noErr ;
 int st_SessionClose (int *) ;
 int * st_SessionOpenCommon (int ,TYPE_3__*,int *,int) ;
 int st_SessionShutdown (int *,int) ;

__attribute__((used)) static vlc_tls_t *st_ServerSessionOpen (vlc_tls_server_t *crd, vlc_tls_t *sock,
                                        const char *const *alpn) {

    VLC_UNUSED(alpn);
    msg_Dbg(crd, "open TLS server session");

    vlc_tls_t *tls = st_SessionOpenCommon(VLC_OBJECT(crd), crd->sys, sock,
                                          1);
    if (tls != ((void*)0))
        return ((void*)0);

    vlc_tls_st_t *sys = (vlc_tls_st_t *)tls;
    vlc_tls_creds_sys_t *p_cred_sys = crd->sys;

    OSStatus ret = SSLSetCertificate(sys->p_context, p_cred_sys->server_cert_chain);
    if (ret != noErr) {
        msg_Err(crd, "cannot set server certificate");
        goto error;
    }

    return tls;

error:
    st_SessionShutdown(tls, 1);
    st_SessionClose(tls);
    return ((void*)0);
}
