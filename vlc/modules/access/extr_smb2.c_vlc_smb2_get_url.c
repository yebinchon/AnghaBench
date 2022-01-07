
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
vlc_smb2_get_url(vlc_url_t *url, const char *file)
{

    char *buf;
    if (asprintf(&buf, "smb://%s%s%s%s%s%s", url->psz_host,
                 url->psz_path != ((void*)0) ? url->psz_path : "",
                 url->psz_path != ((void*)0) && url->psz_path[0] != '\0' &&
                 url->psz_path[strlen(url->psz_path) - 1] != '/' ? "/" : "",
                 file,
                 url->psz_option != ((void*)0) ? "?" : "",
                 url->psz_option != ((void*)0) ? url->psz_option : "") == -1)
        return ((void*)0);
    else
        return buf;
}
