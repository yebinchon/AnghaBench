
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_protocol; char* psz_username; char* psz_password; unsigned long i_port; char* psz_path; char* psz_option; char* psz_fragment; char* psz_buffer; int * psz_host; int * psz_pathbuffer; } ;
typedef TYPE_1__ vlc_url_t ;


 int EINVAL ;
 unsigned long UINT_MAX ;
 int errno ;
 int free (int *) ;
 scalar_t__ isurialnum (char) ;
 int * memchr (char*,char,int) ;
 char* strchr (char*,char) ;
 int * strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 unsigned long strtoul (char*,char**,int) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_idna_to_ascii (char const*) ;
 char* vlc_iri2uri (char const*) ;
 scalar_t__ vlc_uri_component_validate (char*,char*) ;
 char* vlc_uri_decode (char*) ;
 int vlc_uri_host_validate (int *) ;

__attribute__((used)) static int vlc_UrlParseInner(vlc_url_t *restrict url, const char *str)
{
    url->psz_protocol = ((void*)0);
    url->psz_username = ((void*)0);
    url->psz_password = ((void*)0);
    url->psz_host = ((void*)0);
    url->i_port = 0;
    url->psz_path = ((void*)0);
    url->psz_option = ((void*)0);
    url->psz_fragment = ((void*)0);
    url->psz_buffer = ((void*)0);
    url->psz_pathbuffer = ((void*)0);

    if (str == ((void*)0))
    {
        errno = EINVAL;
        return -1;
    }

    char *buf = vlc_iri2uri(str);
    if (unlikely(buf == ((void*)0)))
        return -1;
    url->psz_buffer = buf;

    char *cur = buf, *next;
    int ret = 0;


    next = buf;
    while (isurialnum(*next) || memchr ("+-.", *next, 3) != ((void*)0))
        next++;

    if (*next == ':')
    {
        *(next++) = '\0';
        url->psz_protocol = cur;
        cur = next;
    }


    next = strchr(cur, '#');
    if (next != ((void*)0))
    {
       *(next++) = '\0';
       if (vlc_uri_component_validate(next, "/?"))
           url->psz_fragment = next;
    }


    next = strchr(cur, '?');
    if (next != ((void*)0))
    {
        *(next++) = '\0';
        url->psz_option = next;
    }


    if (strncmp(cur, "//", 2) == 0)
    {
        cur += 2;


        next = strchr(cur, '/');
        if (next != ((void*)0))
        {
            *next = '\0';
            url->psz_path = next;
        }




        next = strrchr(cur, '@');
        if (next != ((void*)0))
        {
            *(next++) = '\0';
            url->psz_username = cur;
            cur = next;


            next = strchr(url->psz_username, ':');
            if (next != ((void*)0))
            {
                *(next++) = '\0';
                url->psz_password = next;
                vlc_uri_decode(url->psz_password);
            }
            vlc_uri_decode(url->psz_username);
        }


        if (*cur == '[' && (next = strrchr(cur, ']')) != ((void*)0))
        {
            *(next++) = '\0';
            url->psz_host = strdup(cur + 1);

            if (*next == ':')
                next++;
            else
                next = ((void*)0);
        }
        else
        {
            next = strchr(cur, ':');
            if (next != ((void*)0))
                *(next++) = '\0';

            const char *host = vlc_uri_decode(cur);
            url->psz_host = (host != ((void*)0)) ? vlc_idna_to_ascii(host) : ((void*)0);
        }

        if (url->psz_host == ((void*)0))
            ret = -1;
        else
        if (!vlc_uri_host_validate(url->psz_host))
        {
            free(url->psz_host);
            url->psz_host = ((void*)0);
            errno = EINVAL;
            ret = -1;
        }


        if (next != ((void*)0) && *next)
        {
            char* end;
            unsigned long port = strtoul(next, &end, 10);

            if (strchr("0123456789", *next) == ((void*)0) || *end || port > UINT_MAX)
            {
                errno = EINVAL;
                ret = -1;
            }

            url->i_port = port;
        }

        if (url->psz_path != ((void*)0))
            *url->psz_path = '/';
    }
    else
    {
        url->psz_path = cur;
    }

    return ret;
}
