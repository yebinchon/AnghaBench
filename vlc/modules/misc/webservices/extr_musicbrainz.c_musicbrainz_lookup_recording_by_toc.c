
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int musicbrainz_recording_t ;
struct TYPE_3__ {int obj; int psz_mb_server; } ;
typedef TYPE_1__ musicbrainz_config_t ;


 int free (char*) ;
 char* musicbrainz_build_discid_json_url (int ,char*,char const*) ;
 int * musicbrainz_lookup_recording_by_apiurl (int ,char*) ;

musicbrainz_recording_t *musicbrainz_lookup_recording_by_toc(musicbrainz_config_t *cfg,
                                                             const char *psz_toc)
{
    char *psz_url = musicbrainz_build_discid_json_url(cfg->psz_mb_server, "-", psz_toc);
    if(!psz_url)
        return ((void*)0);

    musicbrainz_recording_t *r = musicbrainz_lookup_recording_by_apiurl(cfg->obj, psz_url);
    free(psz_url);
    return r;
}
