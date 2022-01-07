
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_title_list {size_t count; struct vlc_player_title const* array; } ;
struct vlc_player_title {int dummy; } ;


 int assert (int) ;

const struct vlc_player_title *
vlc_player_title_list_GetAt(struct vlc_player_title_list *titles, size_t idx)
{
    assert(idx < titles->count);
    return &titles->array[idx];
}
