
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_4__ {int session; int * obj; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;
typedef int vlc_object_t ;
typedef int gnutls_session_t ;
struct TYPE_5__ {int size; scalar_t__ data; } ;
typedef TYPE_2__ gnutls_datum_t ;





 unsigned int GNUTLS_SFLAGS_ETM ;
 unsigned int GNUTLS_SFLAGS_EXT_MASTER_SECRET ;
 unsigned int GNUTLS_SFLAGS_FALSE_START ;
 unsigned int GNUTLS_SFLAGS_SAFE_RENEGOTIATION ;
 int gnutls_alpn_get_selected_protocol (int ,TYPE_2__*) ;
 scalar_t__ gnutls_error_is_fatal (int) ;
 int gnutls_handshake (int ) ;
 int gnutls_record_get_direction (int ) ;
 unsigned int gnutls_session_get_flags (int ) ;
 int gnutls_strerror (int) ;
 int * memchr (scalar_t__,int ,int ) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*,int ) ;
 char* strndup (char*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int gnutls_Handshake(vlc_tls_t *tls, char **restrict alp)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    vlc_object_t *obj = priv->obj;
    gnutls_session_t session = priv->session;
    int val = gnutls_handshake(session);

    if (gnutls_error_is_fatal(val))
    {
        msg_Err(obj, "TLS handshake error: %s", gnutls_strerror(val));
        return -1;
    }

    switch (val)
    {
        case 128:
            break;
        case 130:
        case 129:

            return 1 + gnutls_record_get_direction(session);
        default:
            msg_Warn(obj, "TLS handshake error: %s", gnutls_strerror(val));
            return 1;
    }

    msg_Dbg(obj, "TLS handshake complete");

    unsigned flags = gnutls_session_get_flags(session);

    if (flags & GNUTLS_SFLAGS_SAFE_RENEGOTIATION)
        msg_Dbg(obj, " - safe renegotiation (RFC5746) enabled");
    if (flags & GNUTLS_SFLAGS_EXT_MASTER_SECRET)
        msg_Dbg(obj, " - extended master secret (RFC7627) enabled");
    if (flags & GNUTLS_SFLAGS_ETM)
        msg_Dbg(obj, " - encrypt then MAC (RFC7366) enabled");
    if (flags & GNUTLS_SFLAGS_FALSE_START)
        msg_Dbg(obj, " - false start (RFC7918) enabled");

    if (alp != ((void*)0))
    {
        gnutls_datum_t datum;

        val = gnutls_alpn_get_selected_protocol (session, &datum);
        if (val == 0)
        {
            if (memchr (datum.data, 0, datum.size) != ((void*)0))
                return -1;

            *alp = strndup ((char *)datum.data, datum.size);
            if (unlikely(*alp == ((void*)0)))
                return -1;
        }
        else
            *alp = ((void*)0);
    }
    return 0;
}
