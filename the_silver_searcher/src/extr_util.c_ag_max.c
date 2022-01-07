
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t ag_max(size_t a, size_t b) {
    if (b > a) {
        return b;
    }
    return a;
}
