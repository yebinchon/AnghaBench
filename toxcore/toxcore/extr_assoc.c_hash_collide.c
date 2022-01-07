
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint ;
typedef int hash_t ;
struct TYPE_3__ {int candidates_bucket_size; } ;
typedef TYPE_1__ Assoc ;


 int HASH_COLLIDE_PRIME ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,int) ;
 int stderr ;

__attribute__((used)) static hash_t hash_collide(const Assoc *assoc, hash_t hash)
{
    uint64_t hash64 = hash % assoc->candidates_bucket_size;
    hash64 = (hash64 * HASH_COLLIDE_PRIME) % assoc->candidates_bucket_size;

    hash_t retval = hash64;
    if (!retval) {





        retval = 1;
    }

    return retval;
}
