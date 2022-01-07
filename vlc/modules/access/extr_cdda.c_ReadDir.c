
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int yearbuf ;
typedef int vlc_tick_t ;
typedef int vlc_meta_t ;
struct TYPE_13__ {int i_first_track; scalar_t__ i_last_track; int i_tracks; TYPE_2__* p_sectors; } ;
typedef TYPE_4__ vcddev_toc_t ;
struct TYPE_14__ {char* psz_url; TYPE_7__* p_sys; } ;
typedef TYPE_5__ stream_t ;
typedef int num ;
struct TYPE_15__ {size_t i_tracks; char const* psz_artist; char const* psz_coverart_url; scalar_t__ psz_date; scalar_t__ psz_title; TYPE_1__* p_tracks; } ;
typedef TYPE_6__ musicbrainz_release_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;
typedef int cddb_track_t ;
struct TYPE_16__ {int i_cdda_first; int i_cdda_tracks; scalar_t__ i_cdda_last; int cdtextc; TYPE_3__* mbrecord; int ** cdtextv; int * cddb; TYPE_4__* p_toc; } ;
typedef TYPE_7__ access_sys_t ;
struct TYPE_12__ {TYPE_6__* p_releases; scalar_t__ i_release; } ;
struct TYPE_11__ {int i_lba; } ;
struct TYPE_10__ {unsigned int i_index; scalar_t__ psz_artist; scalar_t__ psz_title; } ;


 int CDDA_DATA_SIZE ;
 scalar_t__ CD_ROM_XA_INTERVAL ;
 int CLOCK_FREQ ;
 scalar_t__ NONEMPTY (char const*) ;
 int ON_EMPTY (char const*,scalar_t__) ;
 int VLC_INPUT_OPTION_TRUSTED ;
 int VLC_SUCCESS ;
 char* _ (char*) ;
 int asprintf (char**,char*,int) ;
 scalar_t__ cddb_disc_get_artist (int *) ;
 char* cddb_disc_get_genre (int *) ;
 char* cddb_disc_get_title (int *) ;
 int * cddb_disc_get_track (int *,int) ;
 int cddb_disc_get_year (int *) ;
 char* cddb_track_get_artist (int *) ;
 char* cddb_track_get_title (int *) ;
 int free (char*) ;
 int input_item_AddOption (int *,char*,int ) ;
 int * input_item_NewDisc (char*,char*,int const) ;
 int input_item_Release (int *) ;
 int input_item_SetAlbum (int *,char const*) ;
 int input_item_SetAlbumArtist (int *,char*) ;
 int input_item_SetArtist (int *,char const*) ;
 int input_item_SetArtworkURL (int *,char const*) ;
 int input_item_SetDate (int *,char*) ;
 int input_item_SetDescription (int *,char const*) ;
 int input_item_SetGenre (int *,char const*) ;
 int input_item_SetName (int *,char const*) ;
 int input_item_SetTitle (int *,char const*) ;
 int input_item_SetTrackNum (int *,char*) ;
 int input_item_SetTrackTotal (int *,char*) ;
 int input_item_node_AppendItem (int *,int *) ;
 scalar_t__ likely (int) ;
 int msg_Dbg (TYPE_5__*,char*,int,int) ;
 int snprintf (char*,int,char*,int) ;
 int sscanf (scalar_t__,char*,unsigned int*) ;
 scalar_t__ unlikely (int) ;
 int vlc_meta_Album ;
 int vlc_meta_Artist ;
 int vlc_meta_Description ;
 int vlc_meta_Genre ;
 scalar_t__ vlc_meta_Get (int const*,int ) ;
 int vlc_meta_Title ;

__attribute__((used)) static int ReadDir(stream_t *access, input_item_node_t *node)
{
    access_sys_t *sys = access->p_sys;
    const vcddev_toc_t *p_toc = sys->p_toc;


    const int i_start_track_offset = sys->i_cdda_first - sys->p_toc->i_first_track;
    for (int i = 0; i < sys->i_cdda_tracks; i++)
    {
        if(i < i_start_track_offset)
            continue;

        msg_Dbg(access, "track[%d] start=%d", i, p_toc->p_sectors[i].i_lba);


        char *name;

        if (unlikely(asprintf(&name, _("Audio CD - Track %02i"),
                              i - i_start_track_offset + 1 ) == -1))
            name = ((void*)0);


        int i_first_sector = p_toc->p_sectors[i].i_lba;
        int i_last_sector = p_toc->p_sectors[i + 1].i_lba;
        if(sys->i_cdda_first + i == sys->i_cdda_last &&
           p_toc->i_last_track > sys->i_cdda_last)
            i_last_sector -= CD_ROM_XA_INTERVAL;

        const vlc_tick_t duration =
            (vlc_tick_t)(i_last_sector - i_first_sector)
            * CDDA_DATA_SIZE * CLOCK_FREQ / 44100 / 2 / 2;

        input_item_t *item = input_item_NewDisc(access->psz_url,
                                                (name != ((void*)0)) ? name :
                                                access->psz_url, duration);
        free(name);

        if (unlikely(item == ((void*)0)))
            continue;

        char *opt;
        if (likely(asprintf(&opt, "cdda-track=%i", i + 1) != -1))
        {
            input_item_AddOption(item, opt, VLC_INPUT_OPTION_TRUSTED);
            free(opt);
        }

        if (likely(asprintf(&opt, "cdda-first-sector=%i",
                            p_toc->p_sectors[i].i_lba) != -1))
        {
            input_item_AddOption(item, opt, VLC_INPUT_OPTION_TRUSTED);
            free(opt);
        }

        if (likely(asprintf(&opt, "cdda-last-sector=%i", i_last_sector) != -1))
        {
            input_item_AddOption(item, opt, VLC_INPUT_OPTION_TRUSTED);
            free(opt);
        }

        const char *title = ((void*)0);
        const char *artist = ((void*)0);
        const char *album = ((void*)0);
        const char *genre = ((void*)0);
        const char *description = ((void*)0);
        int year = 0;
        if(sys->cdtextc > 0)
        {
            const vlc_meta_t *m;
            if (i + 1 < sys->cdtextc && (m = sys->cdtextv[i + 1]) != ((void*)0))
            {
                ON_EMPTY(title, vlc_meta_Get(m, vlc_meta_Title));
                ON_EMPTY(artist, vlc_meta_Get(m, vlc_meta_Artist));
                ON_EMPTY(genre, vlc_meta_Get(m, vlc_meta_Genre));
                ON_EMPTY(description, vlc_meta_Get(m, vlc_meta_Description));
            }


            if ((m = sys->cdtextv[0]) != ((void*)0))
            {
                ON_EMPTY(artist, vlc_meta_Get(m, vlc_meta_Artist));
                ON_EMPTY(album, vlc_meta_Get(m, vlc_meta_Album));
                ON_EMPTY(genre, vlc_meta_Get(m, vlc_meta_Genre));
                ON_EMPTY(description, vlc_meta_Get(m, vlc_meta_Description));
            }
        }

        if(sys->mbrecord && sys->mbrecord->i_release)
        {
            musicbrainz_release_t *r = sys->mbrecord->p_releases;
            for(size_t j=0; j<r->i_tracks; j++)
            {
                if(r->p_tracks[j].i_index == (unsigned)i + 1)
                {
                    if (r->p_tracks[j].psz_title)
                    {
                        ON_EMPTY(title, r->p_tracks[j].psz_title);
                        ON_EMPTY(artist, r->p_tracks[j].psz_artist);
                    }
                    break;
                }
            }
            ON_EMPTY(album, r->psz_title);
            if(NONEMPTY(r->psz_artist))
            {
                artist = r->psz_artist;
                input_item_SetAlbumArtist(item, r->psz_artist);
            }
            if(year == 0 && r->psz_date)
            {
                unsigned i_year;
                if(sscanf(r->psz_date, "%4d", &i_year) == 1)
                    year = i_year;
            }
            if(NONEMPTY(r->psz_coverart_url))
                input_item_SetArtworkURL(item, r->psz_coverart_url);
        }

        if (NONEMPTY(title))
        {
            input_item_SetName(item, title);
            input_item_SetTitle(item, title);
        }

        if (NONEMPTY(artist))
            input_item_SetArtist(item, artist);

        if (NONEMPTY(genre))
            input_item_SetGenre(item, genre);

        if (NONEMPTY(description))
            input_item_SetDescription(item, description);

        if (NONEMPTY(album))
            input_item_SetAlbum(item, album);

        if (year != 0)
        {
            char yearbuf[5];

            snprintf(yearbuf, sizeof (yearbuf), "%u", year);
            input_item_SetDate(item, yearbuf);
        }

        char num[4];
        if(snprintf(num, sizeof (num), "%u", i + 1) < 4)
            input_item_SetTrackNum(item, num);
        snprintf(num, sizeof (num), "%u", p_toc->i_tracks);
        input_item_SetTrackTotal(item, num);

        input_item_node_AppendItem(node, item);
        input_item_Release(item);
    }


    return VLC_SUCCESS;
}
