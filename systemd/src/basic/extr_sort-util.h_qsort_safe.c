
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __compar_fn_t ;


 int assert (void*) ;
 int qsort (void*,size_t,size_t,int ) ;

__attribute__((used)) static inline void qsort_safe(void *base, size_t nmemb, size_t size, __compar_fn_t compar) {
        if (nmemb <= 1)
                return;

        assert(base);
        qsort(base, nmemb, size, compar);
}
