
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline int highest_set_bit(const u64 num) {
    for (int i = 63; i >= 0; i--) {
        if (((u64)1 << i) <= num) {
            return i;
        }
    }
    return -1;
}
