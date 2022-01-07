
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;




 int var_SetString (int *,char*,char const*) ;
 int vlc_assert_unreachable () ;
 int vlc_player_assert_locked (int *) ;

void
vlc_player_SelectCategoryLanguage(vlc_player_t *player,
                                  enum es_format_category_e cat,
                                  const char *lang)
{
    vlc_player_assert_locked(player);
    switch (cat)
    {
        case 129:
            var_SetString(player, "audio-language", lang);
            break;
        case 128:
            var_SetString(player, "sub-language", lang);
            break;
        default:
            vlc_assert_unreachable();
    }
}
