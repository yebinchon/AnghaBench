
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t digest_size; } ;
typedef TYPE_1__ khash ;


 int assert (TYPE_1__*) ;

size_t khash_get_size(khash *h) {
        assert(h);

        return h->digest_size;
}
