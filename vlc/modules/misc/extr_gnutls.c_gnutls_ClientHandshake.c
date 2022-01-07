
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_9__ {int session; int * obj; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;
typedef int vlc_object_t ;
typedef int time_t ;
typedef int gnutls_x509_crt_t ;
typedef int gnutls_session_t ;
struct TYPE_10__ {int data; } ;
typedef TYPE_2__ gnutls_datum_t ;


 unsigned int GNUTLS_CERT_INVALID ;
 unsigned int GNUTLS_CERT_SIGNER_NOT_FOUND ;
 unsigned int GNUTLS_CERT_UNEXPECTED_OWNER ;
 int GNUTLS_CRT_PRINT_ONELINE ;
 int GNUTLS_CRT_X509 ;


 int GNUTLS_X509_FMT_DER ;
 char* N_ (char*) ;
 int VLC_DIALOG_QUESTION_WARNING ;
 int * _ (char*) ;
 int free (char*) ;
 int gnutls_Handshake (int *,char**) ;
 TYPE_2__* gnutls_certificate_get_peers (int ,unsigned int*) ;
 int gnutls_certificate_type_get (int ) ;
 scalar_t__ gnutls_certificate_verification_status_print (unsigned int,int ,TYPE_2__*,int ) ;
 int gnutls_certificate_verify_peers3 (int ,char const*,unsigned int*) ;
 int gnutls_free (int ) ;
 int gnutls_store_pubkey (int *,int *,char const*,char const*,int ,TYPE_2__ const*,int,int ) ;
 int gnutls_strerror (int) ;
 int gnutls_verify_stored_pubkey (int *,int *,char const*,char const*,int ,TYPE_2__ const*,int ) ;
 int gnutls_x509_crt_deinit (int ) ;
 scalar_t__ gnutls_x509_crt_import (int ,TYPE_2__ const*,int ) ;
 scalar_t__ gnutls_x509_crt_init (int *) ;
 scalar_t__ gnutls_x509_crt_print (int ,int ,TYPE_2__*) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,...) ;
 int time (int*) ;
 int vlc_dialog_wait_question (int *,int ,int *,int *,int *,int *,int *,char const*,int ) ;
 int vlc_gettext (char const*) ;

__attribute__((used)) static int gnutls_ClientHandshake(vlc_tls_t *tls,
                                  const char *host, const char *service,
                                  char **restrict alp)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    vlc_object_t *obj = priv->obj;

    int val = gnutls_Handshake(tls, alp);
    if (val)
        return val;


    gnutls_session_t session = priv->session;
    unsigned status;

    val = gnutls_certificate_verify_peers3 (session, host, &status);
    if (val)
    {
        msg_Err(obj, "Certificate verification error: %s",
                gnutls_strerror(val));
        goto error;
    }

    if (status == 0)
        return 0;


    gnutls_datum_t desc;

    if (gnutls_certificate_verification_status_print(status,
                         gnutls_certificate_type_get (session), &desc, 0) == 0)
    {
        msg_Err(obj, "Certificate verification failure: %s", desc.data);
        gnutls_free (desc.data);
    }

    status &= ~GNUTLS_CERT_INVALID;
    status &= ~GNUTLS_CERT_SIGNER_NOT_FOUND;
    status &= ~GNUTLS_CERT_UNEXPECTED_OWNER;

    if (status != 0 || host == ((void*)0))
        goto error;


    const gnutls_datum_t *datum;
    unsigned count;

    datum = gnutls_certificate_get_peers (session, &count);
    if (datum == ((void*)0) || count == 0)
    {
        msg_Err(obj, "Peer certificate not available");
        goto error;
    }

    msg_Dbg(obj, "%u certificate(s) in the list", count);
    val = gnutls_verify_stored_pubkey (((void*)0), ((void*)0), host, service,
                                       GNUTLS_CRT_X509, datum, 0);
    const char *msg;
    switch (val)
    {
        case 0:
            msg_Dbg(obj, "certificate key match for %s", host);
            return 0;
        case 128:
            msg_Dbg(obj, "no known certificates for %s", host);
            msg = N_("However, the security certificate presented by the "
                "server is unknown and could not be authenticated by any "
                "trusted Certificate Authority.");
            break;
        case 129:
            msg_Dbg(obj, "certificate keys mismatch for %s", host);
            msg = N_("However, the security certificate presented by the "
                "server changed since the previous visit and was not "
                "authenticated by any trusted Certificate Authority.");
            break;
        default:
            msg_Err(obj, "certificate key match error for %s: %s", host,
                    gnutls_strerror(val));
            goto error;
    }

    if (vlc_dialog_wait_question(obj, VLC_DIALOG_QUESTION_WARNING,
            _("Abort"), _("View certificate"), ((void*)0),
            _("Insecure site"),
            _("You attempted to reach %s. %s\n"
            "This problem may be stem from an attempt to breach your security, "
            "compromise your privacy, or a configuration error.\n\n"
            "If in doubt, abort now.\n"), host, vlc_gettext(msg)) != 1)
        goto error;

    gnutls_x509_crt_t cert;

    if (gnutls_x509_crt_init (&cert))
        goto error;
    if (gnutls_x509_crt_import (cert, datum, GNUTLS_X509_FMT_DER)
     || gnutls_x509_crt_print (cert, GNUTLS_CRT_PRINT_ONELINE, &desc))
    {
        gnutls_x509_crt_deinit (cert);
        goto error;
    }
    gnutls_x509_crt_deinit (cert);

    val = vlc_dialog_wait_question(obj, VLC_DIALOG_QUESTION_WARNING,
            _("Abort"), _("Accept 24 hours"), _("Accept permanently"),
            _("Insecure site"),
            _("This is the certificate presented by %s:\n%s\n\n"
            "If in doubt, abort now.\n"), host, desc.data);
    gnutls_free (desc.data);

    time_t expiry = 0;
    switch (val)
    {
        case 1:
            time (&expiry);
            expiry += 24 * 60 * 60;

        case 2:
            val = gnutls_store_pubkey (((void*)0), ((void*)0), host, service,
                                       GNUTLS_CRT_X509, datum, expiry, 0);
            if (val)
                msg_Err(obj, "cannot store X.509 certificate: %s",
                         gnutls_strerror (val));
            break;
        default:
            goto error;
    }
    return 0;

error:
    if (alp != ((void*)0))
        free(*alp);
    return -1;
}
