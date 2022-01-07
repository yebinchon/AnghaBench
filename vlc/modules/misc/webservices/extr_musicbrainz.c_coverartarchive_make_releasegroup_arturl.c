
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* COVERARTARCHIVE_DEFAULT_SERVER ;
 int asprintf (char**,char*,char const*,char const*) ;

char * coverartarchive_make_releasegroup_arturl(const char *psz_server, const char *psz_group_id)
{
    char *psz_art;
    if(-1 < asprintf(&psz_art, "https://%s/release-group/%s/front",
                     psz_server ? psz_server : COVERARTARCHIVE_DEFAULT_SERVER,
                     psz_group_id))
        return psz_art;
    return ((void*)0);
}
