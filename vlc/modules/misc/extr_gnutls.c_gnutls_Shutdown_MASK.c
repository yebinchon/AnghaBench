#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_3__ {int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ vlc_tls_gnutls_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  gnutls_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_SHUT_RDWR ; 
 int /*<<< orphan*/  GNUTLS_SHUT_WR ; 
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(vlc_tls_t *tls, bool duplex)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    gnutls_session_t session = priv->session;
    ssize_t val;

    /* Flush any pending data */
    val = FUNC2(session, 0);
    if (val < 0)
        return FUNC0(priv, val);

    val = FUNC1(session, duplex ? GNUTLS_SHUT_RDWR : GNUTLS_SHUT_WR);
    if (val < 0)
        return FUNC0(priv, val);

    return 0;
}