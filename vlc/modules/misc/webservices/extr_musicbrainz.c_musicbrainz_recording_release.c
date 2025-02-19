
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t i_release; size_t i_tracks; struct TYPE_4__* p_releases; struct TYPE_4__* p_tracks; struct TYPE_4__* psz_artist; struct TYPE_4__* psz_title; struct TYPE_4__* psz_coverart_url; struct TYPE_4__* psz_date; struct TYPE_4__* psz_group_id; struct TYPE_4__* psz_id; } ;
typedef TYPE_1__ musicbrainz_recording_t ;


 int free (TYPE_1__*) ;

void musicbrainz_recording_release(musicbrainz_recording_t *mbr)
{
    for(size_t i=0; i<mbr->i_release; i++)
    {
        free(mbr->p_releases[i].psz_id);
        free(mbr->p_releases[i].psz_group_id);
        free(mbr->p_releases[i].psz_artist);
        free(mbr->p_releases[i].psz_title);
        free(mbr->p_releases[i].psz_date);
        free(mbr->p_releases[i].psz_coverart_url);
        for(size_t j=0; j<mbr->p_releases[i].i_tracks; j++)
        {
            free(mbr->p_releases[i].p_tracks[j].psz_title);
            free(mbr->p_releases[i].p_tracks[j].psz_artist);
        }
        free(mbr->p_releases[i].p_tracks);
    }
    free(mbr->p_releases);
    free(mbr);
}
