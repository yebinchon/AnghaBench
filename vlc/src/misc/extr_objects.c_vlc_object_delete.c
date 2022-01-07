
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int free (int *) ;
 int vlc_object_deinit (int *) ;

void (vlc_object_delete)(vlc_object_t *obj)
{
    vlc_object_deinit(obj);
    free(obj);
}
