
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int MMapFileDescriptor ;
typedef int MMapCache ;


 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int *) ;
 int mmap_cache_get (int *,int *,int,int ,int,int,int,int *,void**,int *) ;

__attribute__((used)) static int contains_uint64(MMapCache *m, MMapFileDescriptor *f, uint64_t n, uint64_t p) {
        uint64_t a, b;
        int r;

        assert(m);
        assert(f);



        a = 0; b = n;
        while (a < b) {
                uint64_t c, *z;

                c = (a + b) / 2;

                r = mmap_cache_get(m, f, PROT_READ|PROT_WRITE, 0, 0, c * sizeof(uint64_t), sizeof(uint64_t), ((void*)0), (void **) &z, ((void*)0));
                if (r < 0)
                        return r;

                if (*z == p)
                        return 1;

                if (a + 1 >= b)
                        return 0;

                if (p < *z)
                        b = c;
                else
                        a = c;
        }

        return 0;
}
