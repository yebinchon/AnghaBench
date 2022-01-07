
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; } ;
struct TYPE_5__ {TYPE_1__ vec; } ;
typedef TYPE_2__ vlc_media_source_meta_list_t ;



size_t
vlc_media_source_meta_list_Count(vlc_media_source_meta_list_t *list)
{
    return list->vec.size;
}
