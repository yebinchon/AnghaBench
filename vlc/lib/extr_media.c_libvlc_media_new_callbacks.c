
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_input_item; } ;
typedef TYPE_1__ libvlc_media_t ;
typedef void* libvlc_media_seek_cb ;
typedef void* libvlc_media_read_cb ;
typedef void* libvlc_media_open_cb ;
typedef void* libvlc_media_close_cb ;
typedef int libvlc_instance_t ;


 int assert (int ) ;
 int input_item_AddOpaque (int ,char*,void*) ;
 TYPE_1__* libvlc_media_new_location (int *,char*) ;
 scalar_t__ unlikely (int ) ;

libvlc_media_t *libvlc_media_new_callbacks(libvlc_instance_t *p_instance,
                                           libvlc_media_open_cb open_cb,
                                           libvlc_media_read_cb read_cb,
                                           libvlc_media_seek_cb seek_cb,
                                           libvlc_media_close_cb close_cb,
                                           void *opaque)
{
    libvlc_media_t *m = libvlc_media_new_location(p_instance, "imem://");
    if (unlikely(m == ((void*)0)))
        return ((void*)0);

    assert(read_cb != ((void*)0));
    input_item_AddOpaque(m->p_input_item, "imem-data", opaque);
    input_item_AddOpaque(m->p_input_item, "imem-open", open_cb);
    input_item_AddOpaque(m->p_input_item, "imem-read", read_cb);
    input_item_AddOpaque(m->p_input_item, "imem-seek", seek_cb);
    input_item_AddOpaque(m->p_input_item, "imem-close", close_cb);
    return m;
}
