
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictEntry ;



int sortPointers(const void *a, const void *b) {
    unsigned long la, lb;

    la = (long) (*((dictEntry**)a));
    lb = (long) (*((dictEntry**)b));
    return la-lb;
}
