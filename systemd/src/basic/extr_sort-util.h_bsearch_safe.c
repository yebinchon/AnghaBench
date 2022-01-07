
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __compar_fn_t ;


 int assert (void const*) ;
 void* bsearch (void const*,void const*,size_t,size_t,int ) ;

__attribute__((used)) static inline void* bsearch_safe(const void *key, const void *base,
                                 size_t nmemb, size_t size, __compar_fn_t compar) {
        if (nmemb <= 0)
                return ((void*)0);

        assert(base);
        return bsearch(key, base, nmemb, size, compar);
}
