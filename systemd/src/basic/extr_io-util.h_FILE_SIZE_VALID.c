
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline bool FILE_SIZE_VALID(uint64_t l) {



        return (l >> 63) == 0;
}
