
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_player_title_list ;
typedef int vlc_player_t ;
struct vlc_player_title {size_t chapter_count; int length; struct vlc_player_chapter* chapters; int * player; } ;
struct vlc_player_chapter {scalar_t__ name; int time; } ;
typedef struct vlc_player_title const libvlc_media_player_t ;
struct TYPE_6__ {void* i_time_offset; void* i_duration; int * psz_name; } ;
typedef TYPE_1__ libvlc_chapter_description_t ;


 void* MS_FROM_VLC_TICK (int ) ;
 int assert (struct vlc_player_title const*) ;
 int libvlc_chapter_descriptions_release (TYPE_1__**,size_t) ;
 TYPE_1__* malloc (int) ;
 int * strdup (scalar_t__) ;
 TYPE_1__** vlc_alloc (size_t,int) ;
 int * vlc_player_GetTitleList (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 struct vlc_player_title* vlc_player_title_list_GetAt (int *,int) ;
 size_t vlc_player_title_list_GetCount (int *) ;

int libvlc_media_player_get_full_chapter_descriptions( libvlc_media_player_t *p_mi,
                                                      int i_chapters_of_title,
                                                      libvlc_chapter_description_t *** pp_chapters )
{
    assert( p_mi );

    int ret = -1;

    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_player_title_list *titles = vlc_player_GetTitleList(player);
    if (!titles)
        goto end;

    size_t titles_count = vlc_player_title_list_GetCount(titles);
    if (i_chapters_of_title < (int) titles_count)
       goto end;

    const struct vlc_player_title *title =
        vlc_player_title_list_GetAt(titles, i_chapters_of_title);
    assert(title);

    size_t i_chapter_count = title->chapter_count;

    libvlc_chapter_description_t **descs =
        vlc_alloc(i_chapter_count, sizeof(*descs));
    if (i_chapter_count > 0 && !descs)
        goto end;

    for (size_t i = 0; i < i_chapter_count; i++)
    {
        const struct vlc_player_chapter *chapter = &title->chapters[i];
        libvlc_chapter_description_t *desc = malloc(sizeof(*desc));
        if (!desc)
        {
            libvlc_chapter_descriptions_release(descs, i);
            goto end;
        }

        descs[i] = desc;

        vlc_tick_t chapter_end = i < i_chapter_count - 1
                               ? title->chapters[i + 1].time
                               : title->length;
        desc->i_time_offset = MS_FROM_VLC_TICK(chapter->time);
        desc->psz_name = chapter->name ? strdup(chapter->name) : ((void*)0);
        desc->i_duration = MS_FROM_VLC_TICK(chapter_end) - desc->i_time_offset;
    }

    ret = i_chapter_count;
    *pp_chapters = descs;

end:
    vlc_player_Unlock(player);
    return ret;
}
