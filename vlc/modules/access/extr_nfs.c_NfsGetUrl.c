
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_path; char* psz_option; int psz_host; } ;
typedef TYPE_1__ vlc_url_t ;


 int asprintf (char**,char*,int ,char*,char*,char const*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
NfsGetUrl(vlc_url_t *p_url, const char *psz_file)
{

    char *psz_url;
    if (asprintf(&psz_url, "nfs://%s%s%s%s%s%s", p_url->psz_host,
                 p_url->psz_path != ((void*)0) ? p_url->psz_path : "",
                 p_url->psz_path != ((void*)0) && p_url->psz_path[0] != '\0' &&
                 p_url->psz_path[strlen(p_url->psz_path) - 1] != '/' ? "/" : "",
                 psz_file,
                 p_url->psz_option != ((void*)0) ? "?" : "",
                 p_url->psz_option != ((void*)0) ? p_url->psz_option : "") == -1)
        return ((void*)0);
    else
        return psz_url;
}
