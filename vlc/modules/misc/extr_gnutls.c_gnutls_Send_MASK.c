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
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  gnutls_session_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5 (vlc_tls_t *tls, const struct iovec *iov,
                            unsigned count)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    gnutls_session_t session = priv->session;
    ssize_t val;

    if (!FUNC1(session))
    {
        FUNC2(session);

        while (count > 0)
        {
            val = FUNC3(session, iov->iov_base, iov->iov_len);
            if (val < (ssize_t)iov->iov_len)
                break;

            iov++;
            count--;
        }
    }

    val = FUNC4(session, 0);
    return (val < 0) ? FUNC0(priv, val) : val;
}