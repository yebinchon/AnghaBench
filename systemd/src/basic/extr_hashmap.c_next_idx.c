
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 unsigned int n_buckets (int *) ;

__attribute__((used)) static unsigned next_idx(HashmapBase *h, unsigned idx) {
        return (idx + 1U) % n_buckets(h);
}
