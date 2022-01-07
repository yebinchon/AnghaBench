
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 void* malloc (int) ;
 int memcpy (void*,void const*,size_t) ;

void* memdup(const void *p, size_t l) {
        void *ret;

        assert(l == 0 || p);

        ret = malloc(l ?: 1);
        if (!ret)
                return ((void*)0);

        memcpy(ret, p, l);
        return ret;
}
