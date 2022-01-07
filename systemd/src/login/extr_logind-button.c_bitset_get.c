
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ULONG_BITS ;

__attribute__((used)) static bool bitset_get(const unsigned long *bits, unsigned i) {
        return (bits[i / ULONG_BITS] >> (i % ULONG_BITS)) & 1UL;
}
