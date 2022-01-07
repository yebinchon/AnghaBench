
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_media_source_provider_t ;


 int free (void*) ;
 int vlc_object_delete (int *) ;

__attribute__((used)) static void
ReleaseObject(void *obj)
{



    vlc_object_delete((vlc_media_source_provider_t *)obj);

}
