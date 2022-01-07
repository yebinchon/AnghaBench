
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 int n_buckets (int *) ;

unsigned internal_hashmap_buckets(HashmapBase *h) {
        if (!h)
                return 0;

        return n_buckets(h);
}
