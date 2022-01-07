
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_title_list {size_t count; } ;



size_t
vlc_player_title_list_GetCount(struct vlc_player_title_list *titles)
{
    return titles->count;
}
