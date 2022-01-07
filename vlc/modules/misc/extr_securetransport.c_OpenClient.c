
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * server_cert_chain; int whitelist; } ;
typedef TYPE_1__ vlc_tls_creds_sys_t ;
struct TYPE_7__ {TYPE_1__* sys; int * ops; } ;
typedef TYPE_2__ vlc_tls_client_t ;


 int CFArrayCreateMutable (int ,int ,int *) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int kCFAllocatorDefault ;
 int kCFTypeArrayCallBacks ;
 TYPE_1__* malloc (int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int st_ClientOps ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int OpenClient (vlc_tls_client_t *crd) {

    msg_Dbg(crd, "open st client");

    vlc_tls_creds_sys_t *sys = malloc (sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->whitelist = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    sys->server_cert_chain = ((void*)0);

    crd->ops = &st_ClientOps;
    crd->sys = sys;
    return VLC_SUCCESS;
}
