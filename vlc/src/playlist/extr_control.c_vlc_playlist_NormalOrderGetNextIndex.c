
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; } ;
struct TYPE_5__ {int repeat; TYPE_1__ items; int current; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int ssize_t ;





 int vlc_assert_unreachable () ;

__attribute__((used)) static inline size_t
vlc_playlist_NormalOrderGetNextIndex(vlc_playlist_t *playlist)
{
    switch (playlist->repeat)
    {
        case 128:
        case 129:
            if (playlist->current >= (ssize_t) playlist->items.size - 1)
                return -1;
            return playlist->current + 1;
        case 130:
                if (playlist->items.size == 0)
                    return -1;
            return (playlist->current + 1) % playlist->items.size;
        default:
            vlc_assert_unreachable();
    }
}
