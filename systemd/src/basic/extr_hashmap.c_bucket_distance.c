
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 unsigned int n_buckets (int *) ;

__attribute__((used)) static unsigned bucket_distance(HashmapBase *h, unsigned idx, unsigned from) {
        return idx >= from ? idx - from
                           : n_buckets(h) + idx - from;
}
