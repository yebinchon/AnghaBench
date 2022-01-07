
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int time; int data_public_key; int ret; int ret_ip_port; int public_key; } ;
struct TYPE_7__ {TYPE_3__* entries; TYPE_1__* dht; } ;
struct TYPE_6__ {int const* self_public_key; } ;
typedef int Onion_Announce_Entry ;
typedef TYPE_2__ Onion_Announce ;
typedef int IP_Port ;


 unsigned int ONION_ANNOUNCE_MAX_ENTRIES ;
 int ONION_ANNOUNCE_TIMEOUT ;
 int ONION_RETURN_3 ;
 int cmp_entry ;
 int cmp_public_key ;
 int crypto_box_PUBLICKEYBYTES ;
 int id_closest (int const*,int const*,int ) ;
 int in_entries (TYPE_2__*,int const*) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memcpy (int ,int const*,int ) ;
 int qsort (TYPE_3__*,unsigned int,int,int ) ;
 int unix_time () ;

__attribute__((used)) static int add_to_entries(Onion_Announce *onion_a, IP_Port ret_ip_port, const uint8_t *public_key,
                          const uint8_t *data_public_key, const uint8_t *ret)
{

    int pos = in_entries(onion_a, public_key);

    unsigned int i;

    if (pos == -1) {
        for (i = 0; i < ONION_ANNOUNCE_MAX_ENTRIES; ++i) {
            if (is_timeout(onion_a->entries[i].time, ONION_ANNOUNCE_TIMEOUT))
                pos = i;
        }
    }

    if (pos == -1) {
        if (id_closest(onion_a->dht->self_public_key, public_key, onion_a->entries[0].public_key) == 1)
            pos = 0;
    }

    if (pos == -1)
        return -1;

    memcpy(onion_a->entries[pos].public_key, public_key, crypto_box_PUBLICKEYBYTES);
    onion_a->entries[pos].ret_ip_port = ret_ip_port;
    memcpy(onion_a->entries[pos].ret, ret, ONION_RETURN_3);
    memcpy(onion_a->entries[pos].data_public_key, data_public_key, crypto_box_PUBLICKEYBYTES);
    onion_a->entries[pos].time = unix_time();

    memcpy(cmp_public_key, onion_a->dht->self_public_key, crypto_box_PUBLICKEYBYTES);
    qsort(onion_a->entries, ONION_ANNOUNCE_MAX_ENTRIES, sizeof(Onion_Announce_Entry), cmp_entry);
    return in_entries(onion_a, public_key);
}
