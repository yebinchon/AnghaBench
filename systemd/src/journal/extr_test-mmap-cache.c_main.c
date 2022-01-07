
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MMapFileDescriptor ;
typedef int MMapCache ;


 int PROT_READ ;
 int assert_se (int) ;
 int mkostemp_safe (char*) ;
 int * mmap_cache_add_fd (int *,int) ;
 int mmap_cache_free_fd (int *,int *) ;
 int mmap_cache_get (int *,int *,int ,int,int,unsigned long long,int,int *,void**,int *) ;
 int * mmap_cache_new () ;
 int mmap_cache_unref (int *) ;
 int safe_close (int) ;
 int unlink (char*) ;

int main(int argc, char *argv[]) {
        MMapFileDescriptor *fx;
        int x, y, z, r;
        char px[] = "/tmp/testmmapXXXXXXX", py[] = "/tmp/testmmapYXXXXXX", pz[] = "/tmp/testmmapZXXXXXX";
        MMapCache *m;
        void *p, *q;

        assert_se(m = mmap_cache_new());

        x = mkostemp_safe(px);
        assert_se(x >= 0);
        unlink(px);

        assert_se(fx = mmap_cache_add_fd(m, x));

        y = mkostemp_safe(py);
        assert_se(y >= 0);
        unlink(py);

        z = mkostemp_safe(pz);
        assert_se(z >= 0);
        unlink(pz);

        r = mmap_cache_get(m, fx, PROT_READ, 0, 0, 1, 2, ((void*)0), &p, ((void*)0));
        assert_se(r >= 0);

        r = mmap_cache_get(m, fx, PROT_READ, 0, 0, 2, 2, ((void*)0), &q, ((void*)0));
        assert_se(r >= 0);

        assert_se((uint8_t*) p + 1 == (uint8_t*) q);

        r = mmap_cache_get(m, fx, PROT_READ, 1, 0, 3, 2, ((void*)0), &q, ((void*)0));
        assert_se(r >= 0);

        assert_se((uint8_t*) p + 2 == (uint8_t*) q);

        r = mmap_cache_get(m, fx, PROT_READ, 0, 0, 16ULL*1024ULL*1024ULL, 2, ((void*)0), &p, ((void*)0));
        assert_se(r >= 0);

        r = mmap_cache_get(m, fx, PROT_READ, 1, 0, 16ULL*1024ULL*1024ULL+1, 2, ((void*)0), &q, ((void*)0));
        assert_se(r >= 0);

        assert_se((uint8_t*) p + 1 == (uint8_t*) q);

        mmap_cache_free_fd(m, fx);
        mmap_cache_unref(m);

        safe_close(x);
        safe_close(y);
        safe_close(z);

        return 0;
}
