
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int path; int authority; scalar_t__ secure; int response; } ;


 int asprintf (char**,char*,char*,int ,...) ;
 int free (char*) ;
 scalar_t__ likely (int ) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_ascii_strcasecmp (char const*,char*) ;
 char* vlc_http_msg_get_header (int ,char*) ;
 int vlc_http_res_get_status (struct vlc_http_resource*) ;
 char* vlc_uri_fixup (char const*) ;
 char* vlc_uri_resolve (char*,char const*) ;

char *vlc_http_res_get_redirect(struct vlc_http_resource *restrict res)
{
    int status = vlc_http_res_get_status(res);
    if (status < 0)
        return ((void*)0);

    if ((status / 100) == 2 && !res->secure)
    {
        char *url;


        const char *pragma = vlc_http_msg_get_header(res->response, "Pragma");
        if (pragma != ((void*)0) && !vlc_ascii_strcasecmp(pragma, "features")
         && asprintf(&url, "mmsh://%s%s", res->authority, res->path) >= 0)
            return url;


        if ((vlc_http_msg_get_header(res->response, "Icy-Name") != ((void*)0)
          || vlc_http_msg_get_header(res->response, "Icy-Genre") != ((void*)0))
         && asprintf(&url, "icyx://%s%s", res->authority, res->path) >= 0)
            return url;
    }




    if (status != 201 && (status / 100) != 3)
        return ((void*)0);
    if (status == 304
     || status == 305
     || status == 306 )
        return ((void*)0);

    const char *location = vlc_http_msg_get_header(res->response, "Location");
    if (location == ((void*)0))
        return ((void*)0);



    char *base;

    if (unlikely(asprintf(&base, "http%s://%s%s", res->secure ? "s" : "",
                          res->authority, res->path) == -1))
        return ((void*)0);

    char *fixed = vlc_uri_fixup(location);
    if (fixed != ((void*)0))
        location = fixed;

    char *abs = vlc_uri_resolve(base, location);

    free(fixed);
    free(base);

    if (likely(abs != ((void*)0)))
    {


        size_t len = strcspn(abs, "#");
        abs[len] = '\0';
    }
    return abs;
}
