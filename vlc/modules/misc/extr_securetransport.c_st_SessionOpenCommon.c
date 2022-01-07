
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * ops; } ;
typedef TYPE_1__ vlc_tls_t ;
struct TYPE_9__ {int b_handshaked; int b_blocking_send; int b_server_mode; int * p_context; TYPE_1__ tls; int * obj; int lock; TYPE_1__* sock; scalar_t__ i_send_buffered_bytes; int * p_cred; } ;
typedef TYPE_2__ vlc_tls_st_t ;
typedef int vlc_tls_creds_sys_t ;
typedef int vlc_object_t ;
typedef int * SSLContextRef ;
typedef scalar_t__ OSStatus ;


 int * SSLCreateContext (int *,int ,int ) ;
 scalar_t__ SSLNewContext (int,int **) ;
 scalar_t__ SSLSetConnection (int *,TYPE_1__*) ;
 scalar_t__ SSLSetIOFuncs (int *,int ,int ) ;
 int kSSLClientSide ;
 int kSSLServerSide ;
 int kSSLStreamType ;
 TYPE_2__* malloc (int) ;
 int msg_Err (int *,char*) ;
 scalar_t__ noErr ;
 int st_SessionClose (TYPE_1__*) ;
 int st_SocketReadFunc ;
 int st_SocketWriteFunc ;
 int st_ops ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static vlc_tls_t *st_SessionOpenCommon(vlc_object_t *obj,
                                       vlc_tls_creds_sys_t *crd,
                                       vlc_tls_t *sock, bool b_server)
{
    vlc_tls_st_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return ((void*)0);

    sys->p_cred = crd;
    sys->b_handshaked = 0;
    sys->b_blocking_send = 0;
    sys->i_send_buffered_bytes = 0;
    sys->p_context = ((void*)0);
    sys->sock = sock;
    sys->b_server_mode = b_server;
    vlc_mutex_init(&sys->lock);
    sys->obj = obj;

    vlc_tls_t *tls = &sys->tls;

    tls->ops = &st_ops;

    SSLContextRef p_context = ((void*)0);







    if (SSLNewContext(b_server, &p_context) != noErr) {
        msg_Err(obj, "error calling SSLNewContext");
        goto error;
    }


    sys->p_context = p_context;

    OSStatus ret = SSLSetIOFuncs(p_context, st_SocketReadFunc, st_SocketWriteFunc);
    if (ret != noErr) {
        msg_Err(obj, "cannot set io functions");
        goto error;
    }

    ret = SSLSetConnection(p_context, tls);
    if (ret != noErr) {
        msg_Err(obj, "cannot set connection");
        goto error;
    }

    return tls;

error:
    st_SessionClose(tls);
    return ((void*)0);
}
