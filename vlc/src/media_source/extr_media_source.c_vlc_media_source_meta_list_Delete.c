
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t size; TYPE_1__* data; } ;
struct TYPE_7__ {TYPE_3__ vec; } ;
typedef TYPE_2__ vlc_media_source_meta_list_t ;
struct TYPE_6__ {TYPE_2__* longname; TYPE_2__* name; } ;


 int free (TYPE_2__*) ;
 int vlc_vector_destroy (TYPE_3__*) ;

void
vlc_media_source_meta_list_Delete(vlc_media_source_meta_list_t *list) {
    for (size_t i = 0; i < list->vec.size; ++i)
    {
        free(list->vec.data[i].name);
        free(list->vec.data[i].longname);
    }
    vlc_vector_destroy(&list->vec);
    free(list);
}
