
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int free (char*) ;
 char* memchr (char const*,char,int) ;
 int sscanf (char const*,char*,unsigned short*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strndup (char const*,int) ;
 int strspn (char const*,char*) ;
 char* strstr (char const*,char*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_http_msg_add_header (struct vlc_http_msg*,char*,char*,int,char const*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_resp_create (unsigned short) ;

struct vlc_http_msg *vlc_http_msg_headers(const char *msg)
{
    struct vlc_http_msg *m;
    unsigned short code;

    if (sscanf(msg, "HTTP/1.%*1u %3hu %*s", &code) == 1)
    {
        m = vlc_http_resp_create(code);
        if (unlikely(m == ((void*)0)))
            return ((void*)0);
    }
    else
        return ((void*)0);

    msg = strstr(msg, "\r\n");
    if (msg == ((void*)0))
        goto error;

    while (strcmp(msg + 2, "\r\n"))
    {
        const char *eol = msg;

        do
        {
            eol = strstr(eol + 2, "\r\n");
            if (eol == ((void*)0))
                goto error;
        }
        while (eol[2] == ' ' || eol[2] == '\t');

        msg += 2;

        const char *colon = memchr(msg, ':', eol - msg);
        if (colon == ((void*)0) || colon == msg)
            goto error;

        char *name = strndup(msg, colon - msg);
        if (unlikely(name == ((void*)0)))
            goto error;

        colon++;
        colon += strspn(colon, " \t");

        if (unlikely(vlc_http_msg_add_header(m, name, "%.*s",
                                             (int)(eol - colon), colon)))
        {
            free(name);
            goto error;
        }
        free(name);
        msg = eol;
    }

    return m;
error:
    vlc_http_msg_destroy(m);
    return ((void*)0);
}
