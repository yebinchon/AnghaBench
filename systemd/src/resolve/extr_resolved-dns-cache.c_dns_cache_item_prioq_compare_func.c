
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int until; } ;
typedef TYPE_1__ DnsCacheItem ;


 int CMP (int ,int ) ;

__attribute__((used)) static int dns_cache_item_prioq_compare_func(const void *a, const void *b) {
        const DnsCacheItem *x = a, *y = b;

        return CMP(x->until, y->until);
}
