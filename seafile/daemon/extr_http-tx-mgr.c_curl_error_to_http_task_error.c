
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLE_PEER_FAILED_VERIFICATION ;



 int CURLE_SSL_CACERT ;




 int SYNC_ERROR_ID_CONNECT ;
 int SYNC_ERROR_ID_NETWORK ;
 int SYNC_ERROR_ID_RESOLVE_HOST ;
 int SYNC_ERROR_ID_RESOLVE_PROXY ;
 int SYNC_ERROR_ID_SSL ;
 int SYNC_ERROR_ID_TX ;
 int SYNC_ERROR_ID_TX_TIMEOUT ;
 int SYNC_ERROR_ID_UNHANDLED_REDIRECT ;

__attribute__((used)) static int
curl_error_to_http_task_error (int curl_error)
{
    if (curl_error == CURLE_SSL_CACERT ||
        curl_error == CURLE_PEER_FAILED_VERIFICATION)
        return SYNC_ERROR_ID_SSL;

    switch (curl_error) {
    case 137:
        return SYNC_ERROR_ID_RESOLVE_PROXY;
    case 138:
        return SYNC_ERROR_ID_RESOLVE_HOST;
    case 139:
        return SYNC_ERROR_ID_CONNECT;
    case 135:
        return SYNC_ERROR_ID_TX_TIMEOUT;
    case 129:
    case 130:
    case 131:
    case 128:
        return SYNC_ERROR_ID_SSL;
    case 136:
    case 133:
    case 134:
        return SYNC_ERROR_ID_TX;
    case 132:
        return SYNC_ERROR_ID_UNHANDLED_REDIRECT;
    default:
        return SYNC_ERROR_ID_NETWORK;
    }
}
