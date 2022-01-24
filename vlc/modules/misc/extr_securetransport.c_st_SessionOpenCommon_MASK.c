#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ vlc_tls_t ;
struct TYPE_9__ {int b_handshaked; int b_blocking_send; int b_server_mode; int /*<<< orphan*/ * p_context; TYPE_1__ tls; int /*<<< orphan*/ * obj; int /*<<< orphan*/  lock; TYPE_1__* sock; scalar_t__ i_send_buffered_bytes; int /*<<< orphan*/ * p_cred; } ;
typedef  TYPE_2__ vlc_tls_st_t ;
typedef  int /*<<< orphan*/  vlc_tls_creds_sys_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/ * SSLContextRef ;
typedef  scalar_t__ OSStatus ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kSSLClientSide ; 
 int /*<<< orphan*/  kSSLServerSide ; 
 int /*<<< orphan*/  kSSLStreamType ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  st_SocketReadFunc ; 
 int /*<<< orphan*/  st_SocketWriteFunc ; 
 int /*<<< orphan*/  st_ops ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlc_tls_t *FUNC9(vlc_object_t *obj,
                                       vlc_tls_creds_sys_t *crd,
                                       vlc_tls_t *sock, bool b_server)
{
    vlc_tls_st_t *sys = FUNC4(sizeof (*sys));
    if (FUNC7(sys == NULL))
        return NULL;

    sys->p_cred = crd;
    sys->b_handshaked = false;
    sys->b_blocking_send = false;
    sys->i_send_buffered_bytes = 0;
    sys->p_context = NULL;
    sys->sock = sock;
    sys->b_server_mode = b_server;
    FUNC8(&sys->lock);
    sys->obj = obj;

    vlc_tls_t *tls = &sys->tls;

    tls->ops = &st_ops;

    SSLContextRef p_context = NULL;
#if TARGET_OS_IPHONE
    p_context = SSLCreateContext(NULL, b_server ? kSSLServerSide : kSSLClientSide, kSSLStreamType);
    if (p_context == NULL) {
        msg_Err(obj, "cannot create ssl context");
        goto error;
    }
#else
    if (FUNC1(b_server, &p_context) != noErr) {
        FUNC5(obj, "error calling SSLNewContext");
        goto error;
    }
#endif

    sys->p_context = p_context;

    OSStatus ret = FUNC3(p_context, st_SocketReadFunc, st_SocketWriteFunc);
    if (ret != noErr) {
        FUNC5(obj, "cannot set io functions");
        goto error;
    }

    ret = FUNC2(p_context, tls);
    if (ret != noErr) {
        FUNC5(obj, "cannot set connection");
        goto error;
    }

    return tls;

error:
    FUNC6(tls);
    return NULL;
}