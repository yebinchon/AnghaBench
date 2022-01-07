
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MAX_RANGE ;
 unsigned int NREPS ;
 scalar_t__ RANGE_STEP ;
 int assert_u64_lt (int,int,char*) ;
 int prng_range_u64 (int*,int) ;

__attribute__((used)) static void
test_prng_range_u64(void) {
 uint64_t range;




 for (range = 2; range < 10000000; range += 97) {
  uint64_t s;
  unsigned rep;

  s = range;
  for (rep = 0; rep < 10; rep++) {
   uint64_t r = prng_range_u64(&s, range);

   assert_u64_lt(r, range, "Out of range");
  }
 }
}
