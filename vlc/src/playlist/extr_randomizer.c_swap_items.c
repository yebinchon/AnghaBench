
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_playlist_item_t ;
struct TYPE_2__ {int ** data; } ;
struct randomizer {TYPE_1__ items; } ;



__attribute__((used)) static inline void
swap_items(struct randomizer *r, int i, int j)
{
    vlc_playlist_item_t *item = r->items.data[i];
    r->items.data[i] = r->items.data[j];
    r->items.data[j] = item;
}
