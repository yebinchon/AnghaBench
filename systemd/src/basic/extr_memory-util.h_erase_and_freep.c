
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int explicit_bzero_safe (void*,size_t) ;
 int free (void*) ;
 size_t malloc_usable_size (void*) ;

__attribute__((used)) static inline void erase_and_freep(void *p) {
        void *ptr = *(void**) p;

        if (ptr) {
                size_t l = malloc_usable_size(ptr);
                explicit_bzero_safe(ptr, l);
                free(ptr);
        }
}
