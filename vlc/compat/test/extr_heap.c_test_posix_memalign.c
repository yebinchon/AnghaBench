
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int free (void*) ;
 int posix_memalign (void**,size_t,size_t) ;

__attribute__((used)) static void test_posix_memalign(size_t align, size_t size)
{
    void *p;
    int val = posix_memalign(&p, align, size);

    if (align >= sizeof (void *)) {
        if (val == 0) {
            assert(((uintptr_t)p & (align - 1)) == 0);
            free(p);
        }
    } else
        assert(val != 0);
}
