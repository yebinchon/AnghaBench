
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* psz_path; int * psz_option; int i_port; int * psz_host; int psz_password; int psz_username; int * psz_protocol; } ;
typedef TYPE_1__ vlc_url_t ;


 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParse (TYPE_1__*,char const*) ;
 char* vlc_uri_compose (TYPE_1__*) ;
 char* vlc_uri_merge_paths (char*,char*) ;
 int vlc_uri_remove_dot_segments (char*) ;

char *vlc_uri_resolve(const char *base, const char *ref)
{
    vlc_url_t base_uri, rel_uri;
    vlc_url_t tgt_uri;
    char *pathbuf = ((void*)0), *ret = ((void*)0);

    if (vlc_UrlParse(&rel_uri, ref))
    {
        vlc_UrlClean(&rel_uri);
        return ((void*)0);
    }

    if (rel_uri.psz_protocol != ((void*)0))
    {
        vlc_UrlClean(&rel_uri);
        return strdup(ref);
    }

    vlc_UrlParse(&base_uri, base);


    do
    {
        tgt_uri = rel_uri;
        tgt_uri.psz_protocol = base_uri.psz_protocol;

        if (rel_uri.psz_host != ((void*)0))
            break;

        tgt_uri.psz_username = base_uri.psz_username;
        tgt_uri.psz_password = base_uri.psz_password;
        tgt_uri.psz_host = base_uri.psz_host;
        tgt_uri.i_port = base_uri.i_port;

        if (rel_uri.psz_path == ((void*)0) || rel_uri.psz_path[0] == '\0')
        {
            tgt_uri.psz_path = base_uri.psz_path;
            if (rel_uri.psz_option == ((void*)0))
                tgt_uri.psz_option = base_uri.psz_option;
            break;
        }

        if (rel_uri.psz_path[0] == '/')
            break;

        pathbuf = vlc_uri_merge_paths(base_uri.psz_path, rel_uri.psz_path);
        if (unlikely(pathbuf == ((void*)0)))
            goto error;

        tgt_uri.psz_path = pathbuf;
    }
    while (0);

    if (tgt_uri.psz_path != ((void*)0))
        vlc_uri_remove_dot_segments(tgt_uri.psz_path);

    ret = vlc_uri_compose(&tgt_uri);
error:
    free(pathbuf);
    vlc_UrlClean(&base_uri);
    vlc_UrlClean(&rel_uri);
    return ret;
}
