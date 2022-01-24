#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_6__ {int /*<<< orphan*/  tls; int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ vlc_tls_gnutls_t ;
struct TYPE_7__ {int /*<<< orphan*/  sys; } ;
typedef  TYPE_2__ vlc_tls_client_t ;
typedef  int /*<<< orphan*/  gnutls_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_CLIENT ; 
 int /*<<< orphan*/  GNUTLS_NAME_DNS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const* const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static vlc_tls_t *FUNC6(vlc_tls_client_t *crd,
                                           vlc_tls_t *sk, const char *hostname,
                                           const char *const *alpn)
{
    vlc_tls_gnutls_t *priv = FUNC1(FUNC0(crd), GNUTLS_CLIENT,
                                                crd->sys, sk, alpn);
    if (priv == NULL)
        return NULL;

    gnutls_session_t session = priv->session;

    /* minimum DH prime bits */
    FUNC2 (session, 1024);

    if (FUNC4(hostname != NULL))
        /* fill Server Name Indication */
        FUNC3 (session, GNUTLS_NAME_DNS,
                                hostname, FUNC5 (hostname));

    return &priv->tls;
}