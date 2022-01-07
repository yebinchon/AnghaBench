
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qsort_r (void*,size_t,size_t,int (*) (void const*,void const*,void*),void*) ;

void vlc_qsort(void *base, size_t nmemb, size_t size,
               int (*compar)(const void *, const void *, void *),
               void *arg)
{
    qsort_r(base, nmemb, size, compar, arg);
}
