
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dib_raw_t ;
struct TYPE_2__ {int key; } ;
typedef int HashmapBase ;


 int DIB_FREE ;
 scalar_t__ DIB_RAW_FREE ;
 scalar_t__ DIB_RAW_OVERFLOW ;
 scalar_t__ _likely_ (int) ;
 TYPE_1__* bucket_at (int *,unsigned int) ;
 int bucket_distance (int *,unsigned int,unsigned int) ;
 unsigned int bucket_hash (int *,int ) ;

__attribute__((used)) static unsigned bucket_calculate_dib(HashmapBase *h, unsigned idx, dib_raw_t raw_dib) {
        unsigned initial_bucket;

        if (raw_dib == DIB_RAW_FREE)
                return DIB_FREE;

        if (_likely_(raw_dib < DIB_RAW_OVERFLOW))
                return raw_dib;
        initial_bucket = bucket_hash(h, bucket_at(h, idx)->key);
        return bucket_distance(h, idx, initial_bucket);
}
