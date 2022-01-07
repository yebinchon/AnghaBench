
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_tls_server_t ;
struct TYPE_7__ {scalar_t__ server_cert_chain; } ;
typedef TYPE_2__ vlc_tls_creds_sys_t ;


 int CFRelease (scalar_t__) ;
 int free (TYPE_2__*) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void st_ServerDestroy (vlc_tls_server_t *crd) {
    msg_Dbg(crd, "close secure transport server");

    vlc_tls_creds_sys_t *sys = crd->sys;

    if (sys->server_cert_chain)
        CFRelease(sys->server_cert_chain);

    free(sys);
}
