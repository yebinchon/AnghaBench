
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;
typedef int ssize_t ;
typedef int dist_list ;
struct TYPE_20__ {TYPE_5__* list; } ;
typedef TYPE_4__ candidates_bucket ;
typedef size_t bucket_t ;
struct TYPE_24__ {int ip; } ;
struct TYPE_23__ {size_t candidates_bucket_count; size_t candidates_bucket_size; TYPE_4__* candidates; int self_hash; } ;
struct TYPE_22__ {size_t (* distance_absolute_func ) (TYPE_7__*,int ,int ,int ) ;int flags; size_t count_good; size_t count; TYPE_3__** result; int distance_relative_func; int custom_data; int wanted_id; } ;
struct TYPE_18__ {int timestamp; TYPE_9__ ip_port; } ;
struct TYPE_17__ {int timestamp; TYPE_9__ ip_port; } ;
struct TYPE_19__ {TYPE_2__ assoc6; TYPE_1__ assoc4; int public_key; } ;
struct TYPE_21__ {TYPE_3__ client; scalar_t__ hash; int seen_at; } ;
typedef TYPE_5__ Client_entry ;
typedef TYPE_6__ Assoc_close_entries ;
typedef TYPE_7__ Assoc ;


 int BAD_NODE_TIMEOUT ;
 size_t DISTANCE_INDEX_INDEX_BITS ;
 size_t DISTANCE_INDEX_INDEX_MASK ;
 int LANOk ;
 int LAN_ip (int ) ;
 int ProtoIPv4 ;
 int ProtoIPv6 ;
 int assoc_id_closest ;
 int client_id_self_update (TYPE_7__*) ;
 int dist_index_bubble (TYPE_7__*,size_t*,size_t,size_t,int ,int ,int ) ;
 int dist_index_comp ;
 TYPE_5__* dist_index_entry (TYPE_7__*,size_t) ;
 size_t id_distance (TYPE_7__*,int ,int ,int ) ;
 int ipport_isset (TYPE_9__*) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memset (size_t*,int ,size_t) ;
 int qsort (size_t*,size_t,int,int ) ;
 size_t stub1 (TYPE_7__*,int ,int ,int ) ;

uint8_t Assoc_get_close_entries(Assoc *assoc, Assoc_close_entries *state)
{
    if (!assoc || !state || !state->wanted_id || !state->result)
        return 0;

    if (!assoc->self_hash) {
        client_id_self_update(assoc);

        if (!assoc->self_hash)
            return 0;
    }

    if (!state->distance_relative_func)
        state->distance_relative_func = assoc_id_closest;

    if (!state->distance_absolute_func)
        state->distance_absolute_func = id_distance;

    size_t dist_list_len = assoc->candidates_bucket_count * assoc->candidates_bucket_size;
    uint64_t dist_list[dist_list_len];
    memset(dist_list, ~0, dist_list_len * sizeof(dist_list[0]));
    bucket_t b;
    size_t i;

    for (b = 0; b < assoc->candidates_bucket_count; b++) {
        candidates_bucket *cnd_bckt = &assoc->candidates[b];

        for (i = 0; i < assoc->candidates_bucket_size; i++) {
            Client_entry *entry = &cnd_bckt->list[i];

            if (entry->hash) {
                if (state->flags & ProtoIPv4) {
                    if (!ipport_isset(&entry->client.assoc4.ip_port))
                        continue;

                    if (!(state->flags & LANOk))
                        if (!LAN_ip(entry->client.assoc4.ip_port.ip))
                            continue;
                }

                if (state->flags & ProtoIPv6) {
                    if (!ipport_isset(&entry->client.assoc6.ip_port))
                        continue;

                    if (!(state->flags & LANOk))
                        if (!LAN_ip(entry->client.assoc6.ip_port.ip))
                            continue;
                }

                uint64_t dist = state->distance_absolute_func(assoc, state->custom_data, state->wanted_id, entry->client.public_key);
                uint32_t index = b * assoc->candidates_bucket_size + i;
                dist_list[index] = (dist << DISTANCE_INDEX_INDEX_BITS) | index;
            }
        }
    }

    qsort(dist_list, dist_list_len, sizeof(dist_list[0]), dist_index_comp);





    uint64_t dist_prev = ~0;
    size_t ind_prev = ~0, ind_curr;
    size_t len = 1;

    for (ind_curr = 0; ind_curr < dist_list_len; ind_curr++) {

        if ((dist_list[ind_curr] & DISTANCE_INDEX_INDEX_MASK) == DISTANCE_INDEX_INDEX_MASK)
            break;

        uint64_t dist_curr = dist_list[ind_curr] >> DISTANCE_INDEX_INDEX_BITS;

        if (dist_prev == dist_curr)
            len++;
        else {
            if (len > 1)
                dist_index_bubble(assoc, dist_list, ind_prev, ind_curr - 1, state->wanted_id, state->custom_data,
                                  state->distance_relative_func);

            dist_prev = dist_curr;
            ind_prev = ind_curr;
            len = 1;
        }
    }

    if (len > 1)
        dist_index_bubble(assoc, dist_list, ind_prev, ind_curr - 1, state->wanted_id, state->custom_data,
                          state->distance_relative_func);





    size_t client_quota_good = 0, pos = 0;
    size_t client_quota_max = state->count_good;

    ssize_t taken_last = - 1;

    for (i = 0; (i < dist_list_len) && (pos < state->count); i++) {

        if ((dist_list[i] & DISTANCE_INDEX_INDEX_MASK) == DISTANCE_INDEX_INDEX_MASK)
            break;

        Client_entry *entry = dist_index_entry(assoc, dist_list[i]);

        if (entry && entry->hash) {
            if (client_quota_good >= client_quota_max) {
                state->result[pos++] = &entry->client;
                taken_last = i;
            } else {
                if (state->flags & (ProtoIPv4 | ProtoIPv6)) {
                    if ((state->flags & ProtoIPv4) && is_timeout(entry->client.assoc4.timestamp, BAD_NODE_TIMEOUT))
                        continue;

                    if ((state->flags & ProtoIPv6) && is_timeout(entry->client.assoc6.timestamp, BAD_NODE_TIMEOUT))
                        continue;
                } else if (is_timeout(entry->seen_at, BAD_NODE_TIMEOUT))
                    continue;

                state->result[pos++] = &entry->client;
                client_quota_good++;
                taken_last = i;
            }
        }
    }





    if (pos < state->count) {
        for (i = taken_last + 1; (i < dist_list_len) && (pos < state->count); i++) {

            if ((dist_list[i] & DISTANCE_INDEX_INDEX_MASK) == DISTANCE_INDEX_INDEX_MASK)
                break;

            Client_entry *entry = dist_index_entry(assoc, dist_list[i]);

            if (entry && entry->hash)
                state->result[pos++] = &entry->client;
        }
    }

    return pos;
}
