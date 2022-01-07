
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;


 unsigned long dictGenHashFunction (unsigned long*,int) ;

unsigned int dictKeyHash(const void *keyp) {
    unsigned long key = (unsigned long)keyp;
    key = dictGenHashFunction(&key,sizeof(key));
    key += ~(key << 15);
    key ^= (key >> 10);
    key += (key << 3);
    key ^= (key >> 6);
    key += ~(key << 11);
    key ^= (key >> 16);
    return key;
}
