
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int dummy_release ;
 scalar_t__ likely (int ) ;
 void* vlc_objres_new (size_t,int ) ;
 int vlc_objres_push (int *,void*) ;

void *vlc_obj_malloc(vlc_object_t *obj, size_t size)
{
    void *ptr = vlc_objres_new(size, dummy_release);
    if (likely(ptr != ((void*)0)))
        vlc_objres_push(obj, ptr);
    return ptr;
}
