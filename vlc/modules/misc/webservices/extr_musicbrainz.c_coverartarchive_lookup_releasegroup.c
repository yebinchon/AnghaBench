
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int musicbrainz_lookup_t ;
struct TYPE_3__ {int obj; int psz_coverart_server; } ;
typedef TYPE_1__ musicbrainz_config_t ;
typedef char coverartarchive_t ;


 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 char* calloc (int,int) ;
 int free (char*) ;
 int * musicbrainz_lookup (int ,char*) ;

coverartarchive_t * coverartarchive_lookup_releasegroup(musicbrainz_config_t *cfg, const char *psz_id)
{
    coverartarchive_t *c = calloc(1, sizeof(*c));
    if(!c)
        return ((void*)0);

    char *psz_url;
    if(0 < asprintf(&psz_url, "https://%s/releasegroup/%s", cfg->psz_coverart_server, psz_id ))
    {
        return ((void*)0);
    }

     musicbrainz_lookup_t *p_lookup = musicbrainz_lookup(cfg->obj, psz_url);
     free(psz_url);

     if(!p_lookup)
     {
         free(c);
         return ((void*)0);
     }

    return c;
}
