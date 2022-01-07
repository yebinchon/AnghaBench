
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vlc_playlist_item_meta {int has_date; int has_track_number; int has_disc_number; int has_rating; void* rating; int url; void* disc_number; void* track_number; void* date; int genre; int album_artist; int album; int artist; int duration; int title_or_name; TYPE_1__* item; } ;
struct TYPE_5__ {char* psz_name; int i_duration; } ;
typedef TYPE_2__ input_item_t ;
typedef enum vlc_playlist_sort_key { ____Placeholder_vlc_playlist_sort_key } vlc_playlist_sort_key ;
struct TYPE_4__ {TYPE_2__* media; } ;


 int EMPTY_STR (char const*) ;
 int INPUT_DURATION_INDEFINITE ;
 int INPUT_DURATION_UNSET ;
 int VLC_SUCCESS ;
 int assert (int) ;
 void* atoll (char const*) ;
 char* input_item_GetMetaLocked (TYPE_2__*,int ) ;
 int vlc_assert_unreachable () ;
 int vlc_meta_Album ;
 int vlc_meta_AlbumArtist ;
 int vlc_meta_Artist ;
 int vlc_meta_Date ;
 int vlc_meta_DiscNumber ;
 int vlc_meta_Genre ;
 int vlc_meta_Rating ;
 int vlc_meta_Title ;
 int vlc_meta_TrackNumber ;
 int vlc_meta_URL ;
 int vlc_playlist_item_meta_CopyString (int *,char const*) ;

__attribute__((used)) static int
vlc_playlist_item_meta_InitField(struct vlc_playlist_item_meta *meta,
                                 enum vlc_playlist_sort_key key)
{
    input_item_t *media = meta->item->media;
    switch (key)
    {
        case 130:
        {
            const char *value = input_item_GetMetaLocked(media, vlc_meta_Title);
            if (EMPTY_STR(value))
                value = media->psz_name;
            return vlc_playlist_item_meta_CopyString(&meta->title_or_name,
                                                     value);
        }
        case 133:
        {
            if (media->i_duration == INPUT_DURATION_INDEFINITE
             || media->i_duration == INPUT_DURATION_UNSET)
                meta->duration = 0;
            else
                meta->duration = media->i_duration;
            return VLC_SUCCESS;
        }
        case 136:
        {
            const char *value = input_item_GetMetaLocked(media,
                                                         vlc_meta_Artist);
            return vlc_playlist_item_meta_CopyString(&meta->artist, value);
        }
        case 138:
        {
            const char *value = input_item_GetMetaLocked(media, vlc_meta_Album);
            return vlc_playlist_item_meta_CopyString(&meta->album, value);
        }
        case 137:
        {
            const char *value = input_item_GetMetaLocked(media,
                                                         vlc_meta_AlbumArtist);
            return vlc_playlist_item_meta_CopyString(&meta->album_artist,
                                                     value);
        }
        case 132:
        {
            const char *value = input_item_GetMetaLocked(media, vlc_meta_Genre);
            return vlc_playlist_item_meta_CopyString(&meta->genre, value);
        }
        case 135:
        {
            const char *str = input_item_GetMetaLocked(media, vlc_meta_Date);
            meta->has_date = !EMPTY_STR(str);
            if (meta->has_date)
                meta->date = atoll(str);
            return VLC_SUCCESS;
        }
        case 129:
        {
            const char *str = input_item_GetMetaLocked(media,
                                                       vlc_meta_TrackNumber);
            meta->has_track_number = !EMPTY_STR(str);
            if (meta->has_track_number)
                meta->track_number = atoll(str);
            return VLC_SUCCESS;
        }
        case 134:
        {
            const char *str = input_item_GetMetaLocked(media,
                                                       vlc_meta_DiscNumber);
            meta->has_disc_number = !EMPTY_STR(str);
            if (meta->has_disc_number)
                meta->disc_number = atoll(str);
            return VLC_SUCCESS;
        }
        case 128:
        {
            const char *value = input_item_GetMetaLocked(media, vlc_meta_URL);
            return vlc_playlist_item_meta_CopyString(&meta->url, value);
        }
        case 131:
        {
            const char *str = input_item_GetMetaLocked(media, vlc_meta_Rating);
            meta->has_rating = !EMPTY_STR(str);
            if (meta->has_rating)
                meta->rating = atoll(str);
            return VLC_SUCCESS;
        }
        default:
            assert(!"Unknown sort key");
            vlc_assert_unreachable();
    }
}
