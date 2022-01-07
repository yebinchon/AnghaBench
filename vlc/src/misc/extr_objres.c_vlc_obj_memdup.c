
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 scalar_t__ likely (int ) ;
 int memcpy (void*,void const*,size_t) ;
 void* vlc_obj_malloc (int *,size_t) ;

__attribute__((used)) static void *vlc_obj_memdup(vlc_object_t *obj, const void *base, size_t len)
{
    void *ptr = vlc_obj_malloc(obj, len);
    if (likely(ptr != ((void*)0)))
        memcpy(ptr, base, len);
    return ptr;
}
