
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_8__ {int p_context; } ;
typedef TYPE_1__ vlc_tls_st_t ;
struct TYPE_9__ {int sys; } ;
typedef TYPE_2__ vlc_tls_client_t ;
typedef scalar_t__ OSStatus ;
typedef int * CFMutableArrayRef ;


 int CFRelease (int *) ;
 scalar_t__ SSLSetALPNProtocols (int ,int *) ;
 scalar_t__ SSLSetEnableCertVerify (int ,int) ;
 scalar_t__ SSLSetPeerDomainName (int ,char const*,int ) ;
 scalar_t__ SSLSetSessionOption (int ,int ,int) ;
 int VLC_OBJECT (TYPE_2__*) ;
 int * alpnToCFArray (char const* const*) ;
 int kSSLSessionOptionBreakOnServerAuth ;
 int msg_Dbg (TYPE_2__*,char*,char const*) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int msg_Warn (TYPE_2__*,char*) ;
 scalar_t__ noErr ;
 int st_SessionClose (int *) ;
 int * st_SessionOpenCommon (int ,int ,int *,int) ;
 int st_SessionShutdown (int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static vlc_tls_t *st_ClientSessionOpen(vlc_tls_client_t *crd, vlc_tls_t *sock,
                                 const char *hostname, const char *const *alpn)
{
    msg_Dbg(crd, "open TLS session for %s", hostname);

    vlc_tls_t *tls = st_SessionOpenCommon(VLC_OBJECT(crd), crd->sys, sock,
                                          0);
    if (tls == ((void*)0))
        return ((void*)0);

    vlc_tls_st_t *sys = (vlc_tls_st_t *)tls;

    OSStatus ret = SSLSetPeerDomainName(sys->p_context, hostname, strlen(hostname));
    if (ret != noErr) {
        msg_Err(crd, "cannot set peer domain name");
        goto error;
    }
    if (alpn != ((void*)0)) {

        msg_Warn(crd, "Compiled in SDK without ALPN support. Proxy behavior potentially undefined.");

    }







    ret = SSLSetSessionOption(sys->p_context, kSSLSessionOptionBreakOnServerAuth, 1);
    if (ret != noErr) {
        msg_Err (crd, "cannot set session option");
        goto error;
    }


    ret = SSLSetEnableCertVerify(sys->p_context, 0);
    if (ret != noErr) {
        msg_Err(crd, "error setting enable cert verify");
        goto error;
    }


    return tls;

error:
    st_SessionShutdown(tls, 1);
    st_SessionClose(tls);
    return ((void*)0);
}
