
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t alignc ;
 void* aligned_alloc (size_t,size_t) ;
 size_t* alignv ;
 int assert (int) ;
 int free (void*) ;
 int test_posix_memalign (size_t,size_t) ;

int main(void)
{
    void *p;



    for (size_t i = 0; i < alignc; i++) {
        size_t align = alignv[i];

        assert((align & (align - 1)) == 0);

        p = aligned_alloc(alignv[i], 0);
        free(p);

        for (size_t j = 0; j < alignc; j++) {
             size_t size = alignv[j];

             if (size < align)
                 continue;

             p = aligned_alloc(align, size);
             assert(p != ((void*)0));
             assert(((uintptr_t)p & (align - 1)) == 0);
             free(p);
        }
    }



    for (size_t i = 0; i < 21; i++) {
        size_t align = (size_t)1 << i;

        test_posix_memalign(align, 0);
        test_posix_memalign(align, 1);
        test_posix_memalign(align, align - 1);
        test_posix_memalign(align, align);
        test_posix_memalign(align, align * 2);
    }

    return 0;
}
