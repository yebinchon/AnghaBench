
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dib_raw_t ;
typedef int HashmapBase ;


 scalar_t__ DIB_RAW_FREE ;
 int IDX_NIL ;
 scalar_t__* dib_raw_ptr (int *) ;
 unsigned int n_buckets (int *) ;

__attribute__((used)) static unsigned skip_free_buckets(HashmapBase *h, unsigned idx) {
        dib_raw_t *dibs;

        dibs = dib_raw_ptr(h);

        for ( ; idx < n_buckets(h); idx++)
                if (dibs[idx] != DIB_RAW_FREE)
                        return idx;

        return IDX_NIL;
}
