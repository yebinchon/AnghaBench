
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* algorithm; } ;
typedef TYPE_1__ khash ;


 int assert (TYPE_1__*) ;

const char *khash_get_algorithm(khash *h) {
        assert(h);

        return h->algorithm;
}
