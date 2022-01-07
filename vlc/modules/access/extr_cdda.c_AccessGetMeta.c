
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yearbuf ;
typedef int vlc_meta_t ;
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int cddb_track_t ;
struct TYPE_7__ {scalar_t__ cdtextc; int * cddb; TYPE_1__* p_toc; int ** cdtextv; } ;
typedef TYPE_3__ access_sys_t ;
struct TYPE_5__ {int i_tracks; } ;


 scalar_t__ NONEMPTY (char const*) ;
 char* cddb_disc_get_artist (int *) ;
 char* cddb_disc_get_genre (int *) ;
 char* cddb_disc_get_title (int *) ;
 int * cddb_disc_get_track (int *,int) ;
 unsigned int cddb_disc_get_year (int *) ;
 char* cddb_track_get_artist (int *) ;
 int snprintf (char*,int,char*,unsigned int const) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int vlc_meta_Merge (int *,int *) ;
 int vlc_meta_SetDate (int *,char*) ;
 int vlc_meta_SetGenre (int *,char const*) ;
 int vlc_meta_SetTitle (int *,char const*) ;

__attribute__((used)) static void AccessGetMeta(stream_t *access, vlc_meta_t *meta)
{
    access_sys_t *sys = access->p_sys;

    vlc_meta_SetTitle(meta, "Audio CD");


    if (sys->cdtextc > 0 && sys->cdtextv[0] != ((void*)0))
        vlc_meta_Merge(meta, sys->cdtextv[0]);
}
