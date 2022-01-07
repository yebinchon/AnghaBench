
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 size_t MAX (int,size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static int enlarge_buffer(void **buffer, size_t *buffer_size, size_t *buffer_allocated) {
        size_t l;
        void *p;

        if (*buffer_allocated > *buffer_size)
                return 0;

        l = MAX(16*1024U, (*buffer_size * 2));
        p = realloc(*buffer, l);
        if (!p)
                return -ENOMEM;

        *buffer = p;
        *buffer_allocated = l;

        return 1;
}
