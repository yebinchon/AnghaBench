
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
struct TYPE_5__ {int repeat; int current; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;





 int vlc_assert_unreachable () ;

__attribute__((used)) static inline size_t
vlc_playlist_NormalOrderGetPrevIndex(vlc_playlist_t *playlist)
{
    switch (playlist->repeat)
    {
        case 128:
        case 129:
            return playlist->current - 1;
        case 130:
            if (playlist->current == 0)
                return playlist->items.size - 1;
            return playlist->current - 1;
        default:
            vlc_assert_unreachable();
    }
}
