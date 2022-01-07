
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 int assert (int *) ;
 int resize_buckets (int *,unsigned int) ;

int internal_hashmap_reserve(HashmapBase *h, unsigned entries_add) {
        int r;

        assert(h);

        r = resize_buckets(h, entries_add);
        if (r < 0)
                return r;

        return 0;
}
