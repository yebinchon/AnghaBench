
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sdscmp (void*,void*) ;

int ACLListMatchSds(void *a, void *b) {
    return sdscmp(a,b) == 0;
}
