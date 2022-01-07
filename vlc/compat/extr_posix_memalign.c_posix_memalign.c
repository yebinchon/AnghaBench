
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int SIZE_MAX ;
 int check_align (size_t) ;
 int errno ;
 void* memalign (size_t,size_t) ;

int posix_memalign(void **ptr, size_t align, size_t size)
{
    int val = check_align(align);
    if (val)
        return val;




    if (size > (SIZE_MAX / 2))
        return ENOMEM;

    size += (-size) & (align - 1);

    int saved_errno = errno;
    void *p = memalign(align, size);
    if (p == ((void*)0)) {
        val = errno;
        errno = saved_errno;
        return val;
    }

    *ptr = p;
    return 0;
}
