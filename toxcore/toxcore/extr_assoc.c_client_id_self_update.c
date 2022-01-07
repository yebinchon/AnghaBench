
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* list; } ;
typedef TYPE_2__ candidates_bucket ;
typedef size_t bucket_t ;
struct TYPE_12__ {int self_hash; size_t* self_client_id; size_t candidates_bucket_size; TYPE_2__* candidates; } ;
struct TYPE_9__ {int public_key; } ;
struct TYPE_11__ {size_t hash; TYPE_1__ client; } ;
typedef TYPE_3__ Client_entry ;
typedef TYPE_4__ Assoc ;


 size_t HASH_COLLIDE_COUNT ;
 int LOGGER_DEBUG (char*) ;
 size_t candidates_id_bucket (TYPE_4__*,size_t*) ;
 size_t crypto_box_PUBLICKEYBYTES ;
 size_t hash_collide (TYPE_4__*,size_t) ;
 scalar_t__ id_equal (int ,size_t*) ;
 int id_hash (TYPE_4__*,size_t*) ;

__attribute__((used)) static void client_id_self_update(Assoc *assoc)
{
    if (assoc->self_hash)
        return;

    size_t i, sum = 0;

    for (i = 0; i < crypto_box_PUBLICKEYBYTES; i++)
        sum |= assoc->self_client_id[i];

    if (!sum)
        return;

    assoc->self_hash = id_hash(assoc, assoc->self_client_id);

    LOGGER_DEBUG("id is now set, purging cache of self-references");




    bucket_t b_id = candidates_id_bucket(assoc, assoc->self_client_id);
    candidates_bucket *cnd_bckt = &assoc->candidates[b_id];
    size_t pos = assoc->self_hash % assoc->candidates_bucket_size;

    for (i = 0; i < HASH_COLLIDE_COUNT; pos = hash_collide(assoc, pos), i++) {
        Client_entry *entry = &cnd_bckt->list[pos];

        if (entry->hash == assoc->self_hash)
            if (id_equal(entry->client.public_key, assoc->self_client_id))
                entry->hash = 0;
    }
}
