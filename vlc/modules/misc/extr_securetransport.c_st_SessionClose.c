
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_3__ {int obj; scalar_t__ p_context; } ;
typedef TYPE_1__ vlc_tls_st_t ;


 int CFRelease (scalar_t__) ;
 scalar_t__ SSLDisposeContext (scalar_t__) ;
 int free (TYPE_1__*) ;
 int msg_Dbg (int ,char*) ;
 int msg_Err (int ,char*) ;
 scalar_t__ noErr ;

__attribute__((used)) static void st_SessionClose (vlc_tls_t *session) {

    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;
    msg_Dbg(sys->obj, "close TLS session");

    if (sys->p_context) {



        if (SSLDisposeContext(sys->p_context) != noErr) {
            msg_Err(sys->obj, "error deleting context");
        }

    }
    free(sys);
}
