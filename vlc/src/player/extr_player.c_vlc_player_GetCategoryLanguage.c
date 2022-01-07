
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;




 char* var_GetString (int *,char*) ;
 int vlc_assert_unreachable () ;
 int vlc_player_assert_locked (int *) ;

char *
vlc_player_GetCategoryLanguage(vlc_player_t *player,
                               enum es_format_category_e cat)
{
    vlc_player_assert_locked(player);
    switch (cat)
    {
        case 129:
            return var_GetString(player, "audio-language");
        case 128:
            return var_GetString(player, "sub-language");
        default:
            vlc_assert_unreachable();
    }
}
