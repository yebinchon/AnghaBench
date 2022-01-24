#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_4__ {int /*<<< orphan*/  session; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ vlc_tls_gnutls_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  gnutls_session_t ;
struct TYPE_5__ {int /*<<< orphan*/  size; scalar_t__ data; } ;
typedef  TYPE_2__ gnutls_datum_t ;

/* Variables and functions */
#define  GNUTLS_E_AGAIN 130 
#define  GNUTLS_E_INTERRUPTED 129 
#define  GNUTLS_E_SUCCESS 128 
 unsigned int GNUTLS_SFLAGS_ETM ; 
 unsigned int GNUTLS_SFLAGS_EXT_MASTER_SECRET ; 
 unsigned int GNUTLS_SFLAGS_FALSE_START ; 
 unsigned int GNUTLS_SFLAGS_SAFE_RENEGOTIATION ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(vlc_tls_t *tls, char **restrict alp)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    vlc_object_t *obj = priv->obj;
    gnutls_session_t session = priv->session;
    int val = FUNC2(session);

    if (FUNC1(val))
    {
        FUNC8(obj, "TLS handshake error: %s", FUNC5(val));
        return -1;
    }

    switch (val)
    {
        case GNUTLS_E_SUCCESS:
            break;
        case GNUTLS_E_AGAIN:
        case GNUTLS_E_INTERRUPTED:
            /* I/O event: return to caller's poll() loop */
            return 1 + FUNC3(session);
        default:
            FUNC9(obj, "TLS handshake error: %s", FUNC5(val));
            return 1;
    }

    FUNC7(obj, "TLS handshake complete");

    unsigned flags = FUNC4(session);

    if (flags & GNUTLS_SFLAGS_SAFE_RENEGOTIATION)
        FUNC7(obj, " - safe renegotiation (RFC5746) enabled");
    if (flags & GNUTLS_SFLAGS_EXT_MASTER_SECRET)
        FUNC7(obj, " - extended master secret (RFC7627) enabled");
    if (flags & GNUTLS_SFLAGS_ETM)
        FUNC7(obj, " - encrypt then MAC (RFC7366) enabled");
    if (flags & GNUTLS_SFLAGS_FALSE_START)
        FUNC7(obj, " - false start (RFC7918) enabled");

    if (alp != NULL)
    {
        gnutls_datum_t datum;

        val = FUNC0 (session, &datum);
        if (val == 0)
        {
            if (FUNC6 (datum.data, 0, datum.size) != NULL)
                return -1; /* Other end is doing something fishy?! */

            *alp = FUNC10 ((char *)datum.data, datum.size);
            if (FUNC11(*alp == NULL))
                return -1;
        }
        else
            *alp = NULL;
    }
    return 0;
}