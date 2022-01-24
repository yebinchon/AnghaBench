#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_9__ {int /*<<< orphan*/  session; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ vlc_tls_gnutls_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int time_t ;
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;
typedef  int /*<<< orphan*/  gnutls_session_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ gnutls_datum_t ;

/* Variables and functions */
 unsigned int GNUTLS_CERT_INVALID ; 
 unsigned int GNUTLS_CERT_SIGNER_NOT_FOUND ; 
 unsigned int GNUTLS_CERT_UNEXPECTED_OWNER ; 
 int /*<<< orphan*/  GNUTLS_CRT_PRINT_ONELINE ; 
 int /*<<< orphan*/  GNUTLS_CRT_X509 ; 
#define  GNUTLS_E_CERTIFICATE_KEY_MISMATCH 129 
#define  GNUTLS_E_NO_CERTIFICATE_FOUND 128 
 int /*<<< orphan*/  GNUTLS_X509_FMT_DER ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  VLC_DIALOG_QUESTION_WARNING ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,TYPE_2__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 

__attribute__((used)) static int FUNC21(vlc_tls_t *tls,
                                  const char *host, const char *service,
                                  char **restrict alp)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    vlc_object_t *obj = priv->obj;

    int val = FUNC3(tls, alp);
    if (val)
        return val;

    /* certificates chain verification */
    gnutls_session_t session = priv->session;
    unsigned status;

    val = FUNC7 (session, host, &status);
    if (val)
    {
        FUNC17(obj, "Certificate verification error: %s",
                FUNC10(val));
        goto error;
    }

    if (status == 0) /* Good certificate */
        return 0;

    /* Bad certificate */
    gnutls_datum_t desc;

    if (FUNC6(status,
                         FUNC5 (session), &desc, 0) == 0)
    {
        FUNC17(obj, "Certificate verification failure: %s", desc.data);
        FUNC8 (desc.data);
    }

    status &= ~GNUTLS_CERT_INVALID; /* always set / catch-all error */
    status &= ~GNUTLS_CERT_SIGNER_NOT_FOUND; /* unknown CA */
    status &= ~GNUTLS_CERT_UNEXPECTED_OWNER; /* mismatched hostname */

    if (status != 0 || host == NULL)
        goto error; /* Really bad certificate */

    /* Look up mismatching certificate in store */
    const gnutls_datum_t *datum;
    unsigned count;

    datum = FUNC4 (session, &count);
    if (datum == NULL || count == 0)
    {
        FUNC17(obj, "Peer certificate not available");
        goto error;
    }

    FUNC16(obj, "%u certificate(s) in the list", count);
    val = FUNC11 (NULL, NULL, host, service,
                                       GNUTLS_CRT_X509, datum, 0);
    const char *msg;
    switch (val)
    {
        case 0:
            FUNC16(obj, "certificate key match for %s", host);
            return 0;
        case GNUTLS_E_NO_CERTIFICATE_FOUND:
            FUNC16(obj, "no known certificates for %s", host);
            msg = FUNC0("However, the security certificate presented by the "
                "server is unknown and could not be authenticated by any "
                "trusted Certificate Authority.");
            break;
        case GNUTLS_E_CERTIFICATE_KEY_MISMATCH:
            FUNC16(obj, "certificate keys mismatch for %s", host);
            msg = FUNC0("However, the security certificate presented by the "
                "server changed since the previous visit and was not "
                "authenticated by any trusted Certificate Authority.");
            break;
        default:
            FUNC17(obj, "certificate key match error for %s: %s", host,
                    FUNC10(val));
            goto error;
    }

    if (FUNC19(obj, VLC_DIALOG_QUESTION_WARNING,
            FUNC1("Abort"), FUNC1("View certificate"), NULL,
            FUNC1("Insecure site"),
            FUNC1("You attempted to reach %s. %s\n"
            "This problem may be stem from an attempt to breach your security, "
            "compromise your privacy, or a configuration error.\n\n"
            "If in doubt, abort now.\n"), host, FUNC20(msg)) != 1)
        goto error;

    gnutls_x509_crt_t cert;

    if (FUNC14 (&cert))
        goto error;
    if (FUNC13 (cert, datum, GNUTLS_X509_FMT_DER)
     || FUNC15 (cert, GNUTLS_CRT_PRINT_ONELINE, &desc))
    {
        FUNC12 (cert);
        goto error;
    }
    FUNC12 (cert);

    val = FUNC19(obj, VLC_DIALOG_QUESTION_WARNING,
            FUNC1("Abort"), FUNC1("Accept 24 hours"), FUNC1("Accept permanently"),
            FUNC1("Insecure site"),
            FUNC1("This is the certificate presented by %s:\n%s\n\n"
            "If in doubt, abort now.\n"), host, desc.data);
    FUNC8 (desc.data);

    time_t expiry = 0;
    switch (val)
    {
        case 1:
            FUNC18 (&expiry);
            expiry += 24 * 60 * 60;
            /* fall through */
        case 2:
            val = FUNC9 (NULL, NULL, host, service,
                                       GNUTLS_CRT_X509, datum, expiry, 0);
            if (val)
                FUNC17(obj, "cannot store X.509 certificate: %s",
                         FUNC10 (val));
            break;
        default:
            goto error;
    }
    return 0;

error:
    if (alp != NULL)
        FUNC2(*alp);
    return -1;
}