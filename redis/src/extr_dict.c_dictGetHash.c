
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dict ;


 int dictHashKey (int *,void const*) ;

uint64_t dictGetHash(dict *d, const void *key) {
    return dictHashKey(d, key);
}
