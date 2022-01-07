
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int b_server_mode; int b_handshaked; int obj; scalar_t__ b_blocking_send; int p_context; } ;
typedef TYPE_1__ vlc_tls_st_t ;
typedef scalar_t__ OSStatus ;
typedef int * CFArrayRef ;


 char* CFArrayALPNCopyFirst (int *) ;
 scalar_t__ SSLCopyALPNProtocols (int ,int **) ;
 scalar_t__ SSLHandshake (int ) ;
 int VLC_UNUSED (char const*) ;




 scalar_t__ errSSLWouldBlock ;
 int msg_Dbg (int ,char*) ;
 int msg_Err (int ,char*,...) ;

 int st_validateServerCertificate (int *,char const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int st_Handshake (vlc_tls_t *session,
                         const char *host, const char *service,
                         char **restrict alp) {

    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;

    VLC_UNUSED(service);

    OSStatus retValue = SSLHandshake(sys->p_context);
    if (alp != ((void*)0)) {
        *alp = ((void*)0);
    }



    if (retValue == errSSLWouldBlock) {
        msg_Dbg(sys->obj, "handshake is blocked, try again later");
        return 1 + (sys->b_blocking_send ? 1 : 0);
    }

    switch (retValue) {
        case 128:
            if (sys->b_server_mode == 0 && st_validateServerCertificate(session, host) != 0) {
                return -1;
            }
            msg_Dbg(sys->obj, "handshake completed successfully");
            sys->b_handshaked = 1;
            return 0;

        case 129:
            msg_Dbg(sys->obj, "SSLHandshake returned errSSLServerAuthCompleted, continuing handshake");
            return st_Handshake(session, host, service, alp);

        case 132:
            msg_Err(sys->obj, "connection was refused");
            return -1;
        case 130:
            msg_Err(sys->obj, "cipher suite negotiation failed");
            return -1;
        case 131:
            msg_Err(sys->obj, "fatal error occurred during handshake");
            return -1;

        default:
            msg_Err(sys->obj, "handshake returned error %d", (int)retValue);
            return -1;
    }
}
