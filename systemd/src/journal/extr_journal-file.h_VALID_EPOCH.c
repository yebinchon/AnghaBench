
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;



__attribute__((used)) static inline bool VALID_EPOCH(uint64_t u) {

        return u < (1ULL << 55);
}
