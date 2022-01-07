
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;


 int EAGAIN ;
 int ECONNRESET ;
 int EINTR ;


 int WSAECONNRESET ;
 int WSAEINTR ;
 int WSAEWOULDBLOCK ;
 int WSASetLastError (int ) ;
 int errno ;
 int gnutls_error_is_fatal (int) ;
 int gnutls_strerror (int) ;
 int msg_Err (int ,char*,...) ;

__attribute__((used)) static int gnutls_Error(vlc_tls_gnutls_t *priv, int val)
{
    switch (val)
    {
        case 129:



            errno = EAGAIN;
            break;

        case 128:



            errno = EINTR;
            break;

        default:
            msg_Err(priv->obj, "%s", gnutls_strerror (val));

            if (!gnutls_error_is_fatal (val))
                msg_Err(priv->obj, "Error above should be handled");




            errno = ECONNRESET;
    }
    return -1;
}
