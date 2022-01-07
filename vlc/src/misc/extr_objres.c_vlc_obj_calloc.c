
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int ENOMEM ;
 int errno ;
 scalar_t__ likely (int ) ;
 int memset (void*,int ,size_t) ;
 int mul_overflow (size_t,size_t,size_t*) ;
 scalar_t__ unlikely (int ) ;
 void* vlc_obj_malloc (int *,size_t) ;

void *vlc_obj_calloc(vlc_object_t *obj, size_t nmemb, size_t size)
{
    size_t tabsize;
    if (unlikely(mul_overflow(nmemb, size, &tabsize)))
    {
        errno = ENOMEM;
        return ((void*)0);
    }

    void *ptr = vlc_obj_malloc(obj, tabsize);
    if (likely(ptr != ((void*)0)))
        memset(ptr, 0, tabsize);
    return ptr;
}
