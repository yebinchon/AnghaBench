
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_2__ {int http_proxy_addr; int http_proxy_port; int http_proxy_username; int http_proxy_password; int http_proxy_type; int use_http_proxy; } ;
typedef int CURL ;


 int CURLAUTH_BASIC ;
 int CURLAUTH_DIGEST ;
 int CURLAUTH_DIGEST_IE ;
 int CURLAUTH_GSSNEGOTIATE ;
 int CURLAUTH_NTLM ;
 int CURLOPT_HTTPPROXYTUNNEL ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYAUTH ;
 int CURLOPT_PROXYPASSWORD ;
 int CURLOPT_PROXYPORT ;
 int CURLOPT_PROXYTYPE ;
 int CURLOPT_PROXYUSERNAME ;
 int CURLPROXY_HTTP ;
 int CURLPROXY_SOCKS5 ;
 int PROXY_TYPE_HTTP ;
 int PROXY_TYPE_SOCKS ;
 int curl_easy_setopt (int *,int ,int) ;
 scalar_t__ g_strcmp0 (int ,int ) ;
 TYPE_1__* seaf ;

__attribute__((used)) static void
set_proxy (CURL *curl, gboolean is_https)
{

    if (!seaf->use_http_proxy || !seaf->http_proxy_type || !seaf->http_proxy_addr) {
        curl_easy_setopt (curl, CURLOPT_PROXY, ((void*)0));
        return;
    }

    if (g_strcmp0(seaf->http_proxy_type, PROXY_TYPE_HTTP) == 0) {
        curl_easy_setopt(curl, CURLOPT_PROXYTYPE, CURLPROXY_HTTP);

        if (is_https)
            curl_easy_setopt(curl, CURLOPT_HTTPPROXYTUNNEL, 1L);
        curl_easy_setopt(curl, CURLOPT_PROXY, seaf->http_proxy_addr);
        curl_easy_setopt(curl, CURLOPT_PROXYPORT,
                         seaf->http_proxy_port > 0 ? seaf->http_proxy_port : 80);
        if (seaf->http_proxy_username && seaf->http_proxy_password) {
            curl_easy_setopt(curl, CURLOPT_PROXYAUTH,
                             CURLAUTH_BASIC |
                             CURLAUTH_DIGEST |
                             CURLAUTH_DIGEST_IE |
                             CURLAUTH_GSSNEGOTIATE |
                             CURLAUTH_NTLM);
            curl_easy_setopt(curl, CURLOPT_PROXYUSERNAME, seaf->http_proxy_username);
            curl_easy_setopt(curl, CURLOPT_PROXYPASSWORD, seaf->http_proxy_password);
        }
    } else if (g_strcmp0(seaf->http_proxy_type, PROXY_TYPE_SOCKS) == 0) {
        if (seaf->http_proxy_port < 0)
            return;
        curl_easy_setopt(curl, CURLOPT_PROXYTYPE, CURLPROXY_SOCKS5);
        curl_easy_setopt(curl, CURLOPT_PROXY, seaf->http_proxy_addr);
        curl_easy_setopt(curl, CURLOPT_PROXYPORT, seaf->http_proxy_port);
    }
}
