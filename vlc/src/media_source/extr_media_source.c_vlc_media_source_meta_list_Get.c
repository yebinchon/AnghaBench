
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct vlc_media_source_meta* data; } ;
struct TYPE_5__ {TYPE_1__ vec; } ;
typedef TYPE_2__ vlc_media_source_meta_list_t ;
struct vlc_media_source_meta {int dummy; } ;



struct vlc_media_source_meta *
vlc_media_source_meta_list_Get(vlc_media_source_meta_list_t *list, size_t index)
{
    return &list->vec.data[index];
}
