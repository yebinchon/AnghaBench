
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int dictKeyCompare(void *privdata, const void *key1, const void *key2) {
    unsigned long k1 = (unsigned long)key1;
    unsigned long k2 = (unsigned long)key2;
    return k1 == k2;
}
