
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset_func (void*,char,size_t) ;

void* explicit_bzero_safe(void *p, size_t l) {
        if (l > 0)
                memset_func(p, '\0', l);

        return p;
}
