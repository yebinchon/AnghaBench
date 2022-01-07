
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_err_t ;
struct TYPE_3__ {int log_error; int log; } ;
typedef TYPE_1__ ngx_connection_t ;


 int ERR_GET_REASON (int ) ;
 int ERR_peek_error () ;
 int NGX_ECONNREFUSED ;
 int NGX_ECONNRESET ;
 int NGX_EHOSTDOWN ;
 int NGX_EHOSTUNREACH ;
 int NGX_ENETDOWN ;
 int NGX_ENETUNREACH ;
 int NGX_ENOTCONN ;
 int NGX_EPIPE ;



 int NGX_ETIMEDOUT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_ERR ;
 int NGX_LOG_INFO ;
 int SSL_ERROR_SSL ;
 int SSL_ERROR_SYSCALL ;
 int SSL_R_BAD_CHANGE_CIPHER_SPEC ;
 int SSL_R_BLOCK_CIPHER_PAD_IS_WRONG ;
 int SSL_R_CALLBACK_FAILED ;
 int SSL_R_CERT_CB_ERROR ;
 int SSL_R_CLIENTHELLO_TLSEXT ;
 int SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC ;
 int SSL_R_DIGEST_CHECK_FAILED ;
 int SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST ;
 int SSL_R_EXCESSIVE_MESSAGE_SIZE ;
 int SSL_R_HTTPS_PROXY_REQUEST ;
 int SSL_R_HTTP_REQUEST ;
 int SSL_R_INAPPROPRIATE_FALLBACK ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_NO_CIPHERS_PASSED ;
 int SSL_R_NO_CIPHERS_SPECIFIED ;
 int SSL_R_NO_COMMON_SIGNATURE_ALGORITHMS ;
 int SSL_R_NO_COMPRESSION_SPECIFIED ;
 int SSL_R_NO_SHARED_CIPHER ;
 int SSL_R_NO_SHARED_GROUP ;
 int SSL_R_NO_SUITABLE_KEY_SHARE ;
 int SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM ;
 int SSL_R_PARSE_TLSEXT ;
 int SSL_R_RECORD_LENGTH_MISMATCH ;
 int SSL_R_RENEGOTIATE_EXT_TOO_LONG ;
 int SSL_R_RENEGOTIATION_ENCODING_ERR ;
 int SSL_R_RENEGOTIATION_MISMATCH ;
 int SSL_R_SCSV_RECEIVED_WHEN_RENEGOTIATING ;
 int SSL_R_SSLV3_ALERT_BAD_CERTIFICATE ;
 int SSL_R_SSLV3_ALERT_BAD_RECORD_MAC ;
 int SSL_R_SSLV3_ALERT_CERTIFICATE_EXPIRED ;
 int SSL_R_SSLV3_ALERT_CERTIFICATE_REVOKED ;
 int SSL_R_SSLV3_ALERT_CERTIFICATE_UNKNOWN ;
 int SSL_R_SSLV3_ALERT_DECOMPRESSION_FAILURE ;
 int SSL_R_SSLV3_ALERT_HANDSHAKE_FAILURE ;
 int SSL_R_SSLV3_ALERT_ILLEGAL_PARAMETER ;
 int SSL_R_SSLV3_ALERT_NO_CERTIFICATE ;
 int SSL_R_SSLV3_ALERT_UNEXPECTED_MESSAGE ;
 int SSL_R_SSLV3_ALERT_UNSUPPORTED_CERTIFICATE ;
 int SSL_R_TLSV1_ALERT_ACCESS_DENIED ;
 int SSL_R_TLSV1_ALERT_DECODE_ERROR ;
 int SSL_R_TLSV1_ALERT_DECRYPTION_FAILED ;
 int SSL_R_TLSV1_ALERT_DECRYPT_ERROR ;
 int SSL_R_TLSV1_ALERT_EXPORT_RESTRICTION ;
 int SSL_R_TLSV1_ALERT_INSUFFICIENT_SECURITY ;
 int SSL_R_TLSV1_ALERT_INTERNAL_ERROR ;
 int SSL_R_TLSV1_ALERT_NO_RENEGOTIATION ;
 int SSL_R_TLSV1_ALERT_PROTOCOL_VERSION ;
 int SSL_R_TLSV1_ALERT_RECORD_OVERFLOW ;
 int SSL_R_TLSV1_ALERT_UNKNOWN_CA ;
 int SSL_R_TLSV1_ALERT_USER_CANCELLED ;
 int SSL_R_UNEXPECTED_MESSAGE ;
 int SSL_R_UNEXPECTED_RECORD ;
 int SSL_R_UNKNOWN_ALERT_TYPE ;
 int SSL_R_UNKNOWN_PROTOCOL ;
 int SSL_R_UNSAFE_LEGACY_RENEGOTIATION_DISABLED ;
 int SSL_R_UNSUPPORTED_PROTOCOL ;
 int SSL_R_VERSION_TOO_LOW ;
 int SSL_R_WRONG_VERSION_NUMBER ;
 int ngx_ssl_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_ssl_connection_error(ngx_connection_t *c, int sslerr, ngx_err_t err,
    char *text)
{
    int n;
    ngx_uint_t level;

    level = NGX_LOG_CRIT;

    if (sslerr == SSL_ERROR_SYSCALL) {

        if (err == NGX_ECONNRESET
            || err == NGX_EPIPE
            || err == NGX_ENOTCONN
            || err == NGX_ETIMEDOUT
            || err == NGX_ECONNREFUSED
            || err == NGX_ENETDOWN
            || err == NGX_ENETUNREACH
            || err == NGX_EHOSTDOWN
            || err == NGX_EHOSTUNREACH)
        {
            switch (c->log_error) {

            case 129:
            case 128:
                level = NGX_LOG_INFO;
                break;

            case 130:
                level = NGX_LOG_ERR;
                break;

            default:
                break;
            }
        }

    } else if (sslerr == SSL_ERROR_SSL) {

        n = ERR_GET_REASON(ERR_peek_error());


        if (n == SSL_R_BAD_CHANGE_CIPHER_SPEC






            || n == SSL_R_BLOCK_CIPHER_PAD_IS_WRONG
            || n == SSL_R_DIGEST_CHECK_FAILED
            || n == SSL_R_ERROR_IN_RECEIVED_CIPHER_LIST
            || n == SSL_R_EXCESSIVE_MESSAGE_SIZE
            || n == SSL_R_HTTPS_PROXY_REQUEST
            || n == SSL_R_HTTP_REQUEST
            || n == SSL_R_LENGTH_MISMATCH



            || n == SSL_R_NO_CIPHERS_SPECIFIED
            || n == SSL_R_NO_COMPRESSION_SPECIFIED
            || n == SSL_R_NO_SHARED_CIPHER
            || n == SSL_R_RECORD_LENGTH_MISMATCH
            || n == SSL_R_UNEXPECTED_MESSAGE
            || n == SSL_R_UNEXPECTED_RECORD
            || n == SSL_R_UNKNOWN_ALERT_TYPE
            || n == SSL_R_UNKNOWN_PROTOCOL



            || n == SSL_R_UNSUPPORTED_PROTOCOL



            || n == SSL_R_WRONG_VERSION_NUMBER
            || n == SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC
            || n == 1000
            )
        {
            switch (c->log_error) {

            case 129:
            case 128:
                level = NGX_LOG_INFO;
                break;

            case 130:
                level = NGX_LOG_ERR;
                break;

            default:
                break;
            }
        }
    }

    ngx_ssl_error(level, c->log, err, text);
}
