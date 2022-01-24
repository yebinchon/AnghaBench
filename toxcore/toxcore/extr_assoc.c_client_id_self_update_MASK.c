#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* list; } ;
typedef  TYPE_2__ candidates_bucket ;
typedef  size_t bucket_t ;
struct TYPE_12__ {int self_hash; size_t* self_client_id; size_t candidates_bucket_size; TYPE_2__* candidates; } ;
struct TYPE_9__ {int /*<<< orphan*/  public_key; } ;
struct TYPE_11__ {size_t hash; TYPE_1__ client; } ;
typedef  TYPE_3__ Client_entry ;
typedef  TYPE_4__ Assoc ;

/* Variables and functions */
 size_t HASH_COLLIDE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (TYPE_4__*,size_t*) ; 
 size_t crypto_box_PUBLICKEYBYTES ; 
 size_t FUNC2 (TYPE_4__*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC4 (TYPE_4__*,size_t*) ; 

__attribute__((used)) static void FUNC5(Assoc *assoc)
{
    if (assoc->self_hash)
        return;

    size_t i, sum = 0;

    for (i = 0; i < crypto_box_PUBLICKEYBYTES; i++)
        sum |= assoc->self_client_id[i];

    if (!sum)
        return;

    assoc->self_hash = FUNC4(assoc, assoc->self_client_id);

    FUNC0("id is now set, purging cache of self-references");

    /* if we already added some (or loaded some) entries,
     * look and remove if we find a match
     */
    bucket_t b_id = FUNC1(assoc, assoc->self_client_id);
    candidates_bucket *cnd_bckt = &assoc->candidates[b_id];
    size_t pos = assoc->self_hash % assoc->candidates_bucket_size;

    for (i = 0; i < HASH_COLLIDE_COUNT; pos = FUNC2(assoc, pos), i++) {
        Client_entry *entry = &cnd_bckt->list[pos];

        if (entry->hash == assoc->self_hash)
            if (FUNC3(entry->client.public_key, assoc->self_client_id))
                entry->hash = 0;
    }
}