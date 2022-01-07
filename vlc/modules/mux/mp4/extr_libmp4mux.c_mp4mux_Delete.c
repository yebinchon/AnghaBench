
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int extra; } ;
struct TYPE_9__ {TYPE_1__ brands; int tracks; } ;
typedef TYPE_2__ mp4mux_trackinfo_t ;
typedef TYPE_2__ mp4mux_handle_t ;


 int ARRAY_RESET (int ) ;
 int free (TYPE_2__*) ;
 int mp4mux_trackinfo_Clear (TYPE_2__*) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 TYPE_2__* vlc_array_item_at_index (int *,size_t) ;

void mp4mux_Delete(mp4mux_handle_t *h)
{
    for(size_t i=0; i<vlc_array_count(&h->tracks); i++)
    {
        mp4mux_trackinfo_t *t = vlc_array_item_at_index(&h->tracks, i);
        mp4mux_trackinfo_Clear(t);
        free(t);
    }
    vlc_array_clear(&h->tracks);
    ARRAY_RESET(h->brands.extra);
    free(h);
}
