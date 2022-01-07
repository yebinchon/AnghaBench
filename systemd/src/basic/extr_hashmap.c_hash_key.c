
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * hash_key; } ;
struct TYPE_5__ {TYPE_1__ indirect; scalar_t__ has_indirect; } ;
typedef TYPE_2__ HashmapBase ;


 int * shared_hash_key ;

__attribute__((used)) static uint8_t *hash_key(HashmapBase *h) {
        return h->has_indirect ? h->indirect.hash_key
                               : shared_hash_key;
}
