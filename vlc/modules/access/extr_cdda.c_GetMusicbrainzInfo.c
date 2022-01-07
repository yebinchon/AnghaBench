
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int i_tracks; TYPE_1__* p_sectors; } ;
typedef TYPE_2__ vcddev_toc_t ;
struct vlc_memstream {char* ptr; } ;
typedef int musicbrainz_recording_t ;
struct TYPE_10__ {char* psz_mb_server; int * psz_coverart_server; int * obj; } ;
typedef TYPE_3__ musicbrainz_config_t ;
struct TYPE_8__ {int i_lba; } ;


 char* BuildMusicbrainzDiscID (TYPE_2__ const*,int,int,int) ;
 int CD_ROM_XA_INTERVAL ;
 int LBAPregap (int ) ;
 int free (char*) ;
 int * musicbrainz_lookup_recording_by_discid (TYPE_3__*,char*) ;
 int * musicbrainz_lookup_recording_by_toc (TYPE_3__*,char*) ;
 char* var_InheritString (int *,char*) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_flush (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,int,...) ;

__attribute__((used)) static musicbrainz_recording_t * GetMusicbrainzInfo( vlc_object_t *obj,
                                                     const vcddev_toc_t *p_toc,
                                                     int i_total, int i_first, int i_last )
{
    musicbrainz_recording_t *recording = ((void*)0);

    char *psz_mbserver = var_InheritString( obj, "musicbrainz-server" );
    if( !psz_mbserver || !*psz_mbserver )
        return ((void*)0);

    musicbrainz_config_t cfg = { .obj = obj,
                                 .psz_mb_server = psz_mbserver,
                                 .psz_coverart_server = ((void*)0) };


    char *psz_disc_id = BuildMusicbrainzDiscID( p_toc,
                                                i_total, i_first, i_last );
    if( psz_disc_id )
    {
        recording = musicbrainz_lookup_recording_by_discid( &cfg, psz_disc_id );
    }
    else
    {
        struct vlc_memstream ms;
        if( vlc_memstream_open(&ms) )
        {
            free( psz_mbserver );
            return ((void*)0);
        }

        vlc_memstream_printf(&ms, "toc=%u+%u", i_first, i_last );


        int i_last_track_end;
        if (p_toc->i_tracks > i_total)
            i_last_track_end = LBAPregap(p_toc->p_sectors[i_total].i_lba) - CD_ROM_XA_INTERVAL;
        else
            i_last_track_end = LBAPregap(p_toc->p_sectors[p_toc->i_tracks].i_lba);
        vlc_memstream_printf(&ms, "+%u", i_last_track_end );
        for( int i = 0; i<i_total; i++ )
            vlc_memstream_printf(&ms, "+%u", LBAPregap(p_toc->p_sectors[i].i_lba) );
        if( vlc_memstream_flush(&ms) )
        {
            if( vlc_memstream_close(&ms) )
                free( ms.ptr );
            free( psz_mbserver );
            return ((void*)0);
        }

        recording = musicbrainz_lookup_recording_by_toc( &cfg, ms.ptr );

        if( vlc_memstream_close(&ms) == 0 )
            free( ms.ptr );
    }

    free( psz_mbserver );
    return recording;
}
