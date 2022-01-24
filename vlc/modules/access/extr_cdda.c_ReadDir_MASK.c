#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yearbuf ;
typedef  int vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_meta_t ;
struct TYPE_13__ {int i_first_track; scalar_t__ i_last_track; int i_tracks; TYPE_2__* p_sectors; } ;
typedef  TYPE_4__ vcddev_toc_t ;
struct TYPE_14__ {char* psz_url; TYPE_7__* p_sys; } ;
typedef  TYPE_5__ stream_t ;
typedef  int /*<<< orphan*/  num ;
struct TYPE_15__ {size_t i_tracks; char const* psz_artist; char const* psz_coverart_url; scalar_t__ psz_date; scalar_t__ psz_title; TYPE_1__* p_tracks; } ;
typedef  TYPE_6__ musicbrainz_release_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;
typedef  int /*<<< orphan*/  cddb_track_t ;
struct TYPE_16__ {int i_cdda_first; int i_cdda_tracks; scalar_t__ i_cdda_last; int cdtextc; TYPE_3__* mbrecord; int /*<<< orphan*/ ** cdtextv; int /*<<< orphan*/ * cddb; TYPE_4__* p_toc; } ;
typedef  TYPE_7__ access_sys_t ;
struct TYPE_12__ {TYPE_6__* p_releases; scalar_t__ i_release; } ;
struct TYPE_11__ {int i_lba; } ;
struct TYPE_10__ {unsigned int i_index; scalar_t__ psz_artist; scalar_t__ psz_title; } ;

/* Variables and functions */
 int CDDA_DATA_SIZE ; 
 scalar_t__ CD_ROM_XA_INTERVAL ; 
 int CLOCK_FREQ ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int VLC_SUCCESS ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char**,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*,char*,int,int) ; 
 int FUNC29 (char*,int,char*,int) ; 
 int FUNC30 (scalar_t__,char*,unsigned int*) ; 
 scalar_t__ FUNC31 (int) ; 
 int /*<<< orphan*/  vlc_meta_Album ; 
 int /*<<< orphan*/  vlc_meta_Artist ; 
 int /*<<< orphan*/  vlc_meta_Description ; 
 int /*<<< orphan*/  vlc_meta_Genre ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_meta_Title ; 

__attribute__((used)) static int FUNC33(stream_t *access, input_item_node_t *node)
{
    access_sys_t *sys = access->p_sys;
    const vcddev_toc_t *p_toc = sys->p_toc;

    /* Build title table */
    const int i_start_track_offset = sys->i_cdda_first - sys->p_toc->i_first_track;
    for (int i = 0; i < sys->i_cdda_tracks; i++)
    {
        if(i < i_start_track_offset)
            continue;

        FUNC28(access, "track[%d] start=%d", i, p_toc->p_sectors[i].i_lba);

        /* Initial/default name */
        char *name;

        if (FUNC31(FUNC3(&name, FUNC2("Audio CD - Track %02i"),
                              i - i_start_track_offset + 1 ) == -1))
            name = NULL;

        /* Create playlist items */
        int i_first_sector = p_toc->p_sectors[i].i_lba;
        int i_last_sector = p_toc->p_sectors[i + 1].i_lba;
        if(sys->i_cdda_first + i == sys->i_cdda_last &&
           p_toc->i_last_track > sys->i_cdda_last)
            i_last_sector -= CD_ROM_XA_INTERVAL;

        const vlc_tick_t duration =
            (vlc_tick_t)(i_last_sector - i_first_sector)
            * CDDA_DATA_SIZE * CLOCK_FREQ / 44100 / 2 / 2;

        input_item_t *item = FUNC13(access->psz_url,
                                                (name != NULL) ? name :
                                                access->psz_url, duration);
        FUNC11(name);

        if (FUNC31(item == NULL))
            continue;

        char *opt;
        if (FUNC27(FUNC3(&opt, "cdda-track=%i", i + 1) != -1))
        {
            FUNC12(item, opt, VLC_INPUT_OPTION_TRUSTED);
            FUNC11(opt);
        }

        if (FUNC27(FUNC3(&opt, "cdda-first-sector=%i",
                            p_toc->p_sectors[i].i_lba) != -1))
        {
            FUNC12(item, opt, VLC_INPUT_OPTION_TRUSTED);
            FUNC11(opt);
        }

        if (FUNC27(FUNC3(&opt, "cdda-last-sector=%i", i_last_sector) != -1))
        {
            FUNC12(item, opt, VLC_INPUT_OPTION_TRUSTED);
            FUNC11(opt);
        }

        const char *title = NULL;
        const char *artist = NULL;
        const char *album = NULL;
        const char *genre = NULL;
        const char *description = NULL;
        int year = 0;

#ifdef HAVE_LIBCDDB
        if (sys->cddb != NULL)
        {
            cddb_track_t *t = cddb_disc_get_track(sys->cddb, i);
            if (t != NULL)
            {
                title = cddb_track_get_title(t);
                artist = cddb_track_get_artist(t);
            }

            ON_EMPTY(artist, cddb_disc_get_artist(sys->cddb));
            album = cddb_disc_get_title(sys->cddb);
            genre = cddb_disc_get_genre(sys->cddb);
            year = cddb_disc_get_year(sys->cddb);
        }
#endif

        /* Per track CDText */
        if(sys->cdtextc > 0)
        {
            const vlc_meta_t *m;
            if (i + 1 < sys->cdtextc && (m = sys->cdtextv[i + 1]) != NULL)
            {
                FUNC1(title,       FUNC32(m, vlc_meta_Title));
                FUNC1(artist,      FUNC32(m, vlc_meta_Artist));
                FUNC1(genre,       FUNC32(m, vlc_meta_Genre));
                FUNC1(description, FUNC32(m, vlc_meta_Description));
            }

            /* Album CDtext data */
            if ((m = sys->cdtextv[0]) != NULL)
            {
                FUNC1(artist,      FUNC32(m, vlc_meta_Artist));
                FUNC1(album,       FUNC32(m, vlc_meta_Album));
                FUNC1(genre,       FUNC32(m, vlc_meta_Genre));
                FUNC1(description, FUNC32(m, vlc_meta_Description));
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
                        FUNC1(title, r->p_tracks[j].psz_title);
                        FUNC1(artist, r->p_tracks[j].psz_artist);
                    }
                    break;
                }
            }
            FUNC1(album, r->psz_title);
            if(FUNC0(r->psz_artist))
            {
                artist = r->psz_artist;
                FUNC16(item, r->psz_artist);
            }
            if(year == 0 && r->psz_date)
            {
                unsigned i_year;
                if(FUNC30(r->psz_date, "%4d", &i_year) == 1)
                    year = i_year;
            }
            if(FUNC0(r->psz_coverart_url))
                FUNC18(item, r->psz_coverart_url);
        }

        if (FUNC0(title))
        {
            FUNC22(item, title);
            FUNC23(item, title);
        }

        if (FUNC0(artist))
            FUNC17(item, artist);

        if (FUNC0(genre))
            FUNC21(item, genre);

        if (FUNC0(description))
            FUNC20(item, description);

        if (FUNC0(album))
            FUNC15(item, album);

        if (year != 0)
        {
            char yearbuf[5];

            FUNC29(yearbuf, sizeof (yearbuf), "%u", year);
            FUNC19(item, yearbuf);
        }

        char num[4];
        if(FUNC29(num, sizeof (num), "%u", i + 1) < 4)
            FUNC24(item, num);
        FUNC29(num, sizeof (num), "%u", p_toc->i_tracks);
        FUNC25(item, num);

        FUNC26(node, item);
        FUNC14(item);
    }
#undef ON_EMPTY
#undef NONEMPTY
    return VLC_SUCCESS;
}