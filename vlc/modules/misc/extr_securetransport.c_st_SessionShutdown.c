
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int obj; int p_context; scalar_t__ b_handshaked; int lock; } ;
typedef TYPE_1__ vlc_tls_st_t ;
typedef scalar_t__ OSStatus ;


 scalar_t__ SSLClose (int ) ;
 int VLC_UNUSED (int) ;
 int msg_Dbg (int ,char*) ;
 int msg_Warn (int ,char*,int) ;
 scalar_t__ noErr ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static int st_SessionShutdown (vlc_tls_t *session, bool duplex) {

    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;

    msg_Dbg(sys->obj, "shutdown TLS session");

    vlc_mutex_destroy(&sys->lock);

    OSStatus ret = noErr;
    VLC_UNUSED(duplex);

    if (sys->b_handshaked) {
        ret = SSLClose(sys->p_context);
    }

    if (ret != noErr) {
        msg_Warn(sys->obj, "Cannot close ssl context (%i)", (int)ret);
        return ret;
    }

    return 0;
}
