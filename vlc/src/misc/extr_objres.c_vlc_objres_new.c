
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_res {void (* release ) (void*) ;void* payload; } ;


 int ENOMEM ;
 int add_overflow (int,size_t,size_t*) ;
 int errno ;
 struct vlc_res* malloc (size_t) ;
 scalar_t__ unlikely (int ) ;

void *vlc_objres_new(size_t size, void (*release)(void *))
{
    if (unlikely(add_overflow(sizeof (struct vlc_res), size, &size)))
    {
        errno = ENOMEM;
        return ((void*)0);
    }

    struct vlc_res *res = malloc(size);
    if (unlikely(res == ((void*)0)))
        return ((void*)0);

    res->release = release;
    return res->payload;
}
