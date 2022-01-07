
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 scalar_t__ MAX (scalar_t__,int) ;
 int SD_RADV_DEFAULT_MIN_TIMEOUT_USEC ;
 int USEC_PER_SEC ;
 int assert_return (int,int ) ;
 scalar_t__ random_u32 () ;

__attribute__((used)) static usec_t radv_compute_timeout(usec_t min, usec_t max) {
        assert_return(min <= max, SD_RADV_DEFAULT_MIN_TIMEOUT_USEC);


        min = MAX(min, 3*USEC_PER_SEC);
        max = MAX(max, 4*USEC_PER_SEC);

        return min + (random_u32() % (max - min));
}
