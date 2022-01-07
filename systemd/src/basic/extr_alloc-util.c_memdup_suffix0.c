
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 size_t SIZE_MAX ;
 scalar_t__ _unlikely_ (int) ;
 int assert (int ) ;
 void* malloc (size_t) ;
 scalar_t__ mempcpy (void*,void const*,size_t) ;

void* memdup_suffix0(const void *p, size_t l) {
        void *ret;

        assert(l == 0 || p);



        if (_unlikely_(l == SIZE_MAX))
                return ((void*)0);

        ret = malloc(l + 1);
        if (!ret)
                return ((void*)0);

        *((uint8_t*) mempcpy(ret, p, l)) = 0;
        return ret;
}
