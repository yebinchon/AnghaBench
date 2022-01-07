
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UINT64_MAX ;
 int cap_last_cap () ;

__attribute__((used)) static inline uint64_t all_capabilities(void) {
        return UINT64_MAX >> (63 - cap_last_cap());
}
