
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_playlist_item_meta {int rating; int has_rating; int url; int disc_number; int has_disc_number; int track_number; int has_track_number; int date; int has_date; int genre; int album_artist; int album; int artist; int duration; int title_or_name; } ;
typedef enum vlc_playlist_sort_key { ____Placeholder_vlc_playlist_sort_key } vlc_playlist_sort_key ;


 int CompareIntegers (int ,int ) ;
 int CompareOptionalIntegers (int ,int ,int ,int ) ;
 int CompareStrings (int ,int ) ;
 int assert (int) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static inline int
CompareMetaByKey(const struct vlc_playlist_item_meta *a,
                 const struct vlc_playlist_item_meta *b,
                 enum vlc_playlist_sort_key key)
{
    switch (key)
    {
        case 130:
            return CompareStrings(a->title_or_name, b->title_or_name);
        case 133:
            return CompareIntegers(a->duration, b->duration);
        case 136:
            return CompareStrings(a->artist, b->artist);
        case 138:
            return CompareStrings(a->album, b->album);
        case 137:
            return CompareStrings(a->album_artist, b->album_artist);
        case 132:
            return CompareStrings(a->genre, b->genre);
        case 135:
            return CompareOptionalIntegers(a->has_date, a->date,
                                           b->has_date, b->date);
        case 129:
            return CompareOptionalIntegers(a->has_track_number, a->track_number,
                                           b->has_track_number, b->track_number);
        case 134:
            return CompareOptionalIntegers(a->has_disc_number, a->disc_number,
                                           b->has_disc_number, b->disc_number);
        case 128:
            return CompareStrings(a->url, b->url);
        case 131:
            return CompareOptionalIntegers(a->has_rating, a->rating,
                                           b->has_rating, b->rating);
        default:
            assert(!"Unknown sort key");
            vlc_assert_unreachable();
     }
}
