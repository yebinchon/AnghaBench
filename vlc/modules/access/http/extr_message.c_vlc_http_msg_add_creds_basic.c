
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int EINVAL ;
 int asprintf (char**,char*,char const*,char const*) ;
 int errno ;
 int free (char*) ;
 scalar_t__ unlikely (int) ;
 char* vlc_b64_encode_binary (unsigned char*,int) ;
 int vlc_http_msg_add_header (struct vlc_http_msg*,char*,char*,char*) ;

int vlc_http_msg_add_creds_basic(struct vlc_http_msg *m, bool proxy,
                                 const char *username, const char *password)
{
    char *str, *token;
    int ret;
    unsigned char c;


    for (size_t len = 0; (c = username[len]) != '\0'; len++)
        if (c < 32 || c == 127 || c == ':')
        {
            errno = EINVAL;
            return -1;
        }


    for (size_t len = 0; (c = password[len]) != '\0'; len++)
        if (c < 32 || c == 127)
        {
            errno = EINVAL;
            return -1;
        }

    ret = asprintf(&str, "%s:%s", username, password);
    if (unlikely(ret < 0))
        return -1;

    token = vlc_b64_encode_binary((unsigned char *)str, ret);
    free(str);
    if (unlikely(token == ((void*)0)))
        return -1;

    ret = vlc_http_msg_add_header(m, proxy ? "Proxy-Authorization" :
                                  "Authorization", "Basic %s", token);
    free(token);
    return ret;
}
