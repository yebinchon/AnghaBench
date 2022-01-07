
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* list; } ;
typedef TYPE_1__ candidates_bucket ;
struct TYPE_9__ {size_t candidates_bucket_bits; unsigned int candidates_bucket_count; size_t candidates_bucket_size; int self_client_id; int getnodes; TYPE_1__* candidates; scalar_t__ hash; } ;
typedef TYPE_2__ Client_entry ;
typedef TYPE_2__ Assoc ;


 size_t HASH_COLLIDE_PRIME ;
 int LOGGER_DEBUG (char*,int,int) ;
 TYPE_2__* calloc (int,int) ;
 int client_id_self_update (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int id_copy (int ,int const*) ;
 void* malloc (int) ;
 size_t prime_upto_min9 (size_t) ;
 int unix_time () ;

Assoc *new_Assoc(size_t bits, size_t entries, const uint8_t *public_id)
{
    if (!public_id)
        return ((void*)0);

    Assoc *assoc = calloc(1, sizeof(*assoc));

    if (!assoc)
        return ((void*)0);





    if (bits < 2)
        bits = 2;
    else if (bits > 15)
        bits = 15;

    assoc->candidates_bucket_bits = bits;
    assoc->candidates_bucket_count = 1U << bits;

    if (entries < 25) {
        if (entries <= 6)
            entries = 5;
        else {
            entries = entries - (1 - (entries % 2));


            if (!(entries % 3))
                entries -= 2;
        }
    } else if (entries > ((1 << 17) - 1))
        entries = (1 << 17) - 1;
    else {

        size_t entries_test = prime_upto_min9(entries);

        if (entries_test == HASH_COLLIDE_PRIME)
            entries_test = prime_upto_min9(entries_test - 1);

        if (entries_test != entries) {

            LOGGER_DEBUG("trimmed %i to %i.\n", (int)entries, (int)entries_test);
            entries = (size_t)entries_test;
        }
    }

    assoc->candidates_bucket_size = entries;


    size_t bckt, cix;
    Client_entry *clients = malloc(sizeof(*clients) * assoc->candidates_bucket_count * assoc->candidates_bucket_size);

    if (!clients) {
        free(assoc);
        return ((void*)0);
    }

    candidates_bucket *lists = malloc(sizeof(*lists) * assoc->candidates_bucket_count);

    if (!lists) {
        free(assoc);
        free(clients);
        return ((void*)0);
    }

    for (bckt = 0; bckt < assoc->candidates_bucket_count; bckt++) {
        candidates_bucket *list = &lists[bckt];

        list->list = &clients[bckt * assoc->candidates_bucket_size];

        for (cix = 0; cix < assoc->candidates_bucket_size; cix++)
            list->list[cix].hash = 0;
    }

    assoc->candidates = lists;
    assoc->getnodes = unix_time();

    id_copy(assoc->self_client_id, public_id);
    client_id_self_update(assoc);

    return assoc;
}
