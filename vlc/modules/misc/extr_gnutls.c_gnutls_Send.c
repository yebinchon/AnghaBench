
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_3__ {int session; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;
typedef scalar_t__ ssize_t ;
typedef int gnutls_session_t ;


 scalar_t__ gnutls_Error (TYPE_1__*,scalar_t__) ;
 int gnutls_record_check_corked (int ) ;
 int gnutls_record_cork (int ) ;
 scalar_t__ gnutls_record_send (int ,int ,scalar_t__) ;
 scalar_t__ gnutls_record_uncork (int ,int ) ;

__attribute__((used)) static ssize_t gnutls_Send (vlc_tls_t *tls, const struct iovec *iov,
                            unsigned count)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    gnutls_session_t session = priv->session;
    ssize_t val;

    if (!gnutls_record_check_corked(session))
    {
        gnutls_record_cork(session);

        while (count > 0)
        {
            val = gnutls_record_send(session, iov->iov_base, iov->iov_len);
            if (val < (ssize_t)iov->iov_len)
                break;

            iov++;
            count--;
        }
    }

    val = gnutls_record_uncork(session, 0);
    return (val < 0) ? gnutls_Error(priv, val) : val;
}
