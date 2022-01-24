#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_context; } ;
typedef  TYPE_1__ vlc_tls_st_t ;
struct TYPE_10__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vlc_tls_server_t ;
struct TYPE_11__ {int /*<<< orphan*/  server_cert_chain; } ;
typedef  TYPE_3__ vlc_tls_creds_sys_t ;
typedef  scalar_t__ OSStatus ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char const* const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vlc_tls_t *FUNC8 (vlc_tls_server_t *crd, vlc_tls_t *sock,
                                        const char *const *alpn) {

    FUNC2(alpn);
    FUNC3(crd, "open TLS server session");

    vlc_tls_t *tls = FUNC6(FUNC1(crd), crd->sys, sock,
                                          true);
    if (tls != NULL)
        return NULL;

    vlc_tls_st_t *sys = (vlc_tls_st_t *)tls;
    vlc_tls_creds_sys_t *p_cred_sys = crd->sys;

    OSStatus ret = FUNC0(sys->p_context, p_cred_sys->server_cert_chain);
    if (ret != noErr) {
        FUNC4(crd, "cannot set server certificate");
        goto error;
    }

    return tls;

error:
    FUNC7(tls, true);
    FUNC5(tls);
    return NULL;
}