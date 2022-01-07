
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hardening; int timestamp; } ;
struct TYPE_5__ {int hardening; int timestamp; } ;
struct TYPE_7__ {int public_key; TYPE_2__ assoc6; TYPE_1__ assoc4; } ;
typedef TYPE_3__ Client_data ;


 int BAD_NODE_TIMEOUT ;
 scalar_t__ HARDENING_ALL_OK ;
 int cmp_public_key ;
 scalar_t__ hardening_correct (int *) ;
 int id_closest (int ,int ,int ) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memcpy (TYPE_3__*,void const*,int) ;

__attribute__((used)) static int cmp_dht_entry(const void *a, const void *b)
{
    Client_data entry1, entry2;
    memcpy(&entry1, a, sizeof(Client_data));
    memcpy(&entry2, b, sizeof(Client_data));
    int t1 = is_timeout(entry1.assoc4.timestamp, BAD_NODE_TIMEOUT) && is_timeout(entry1.assoc6.timestamp, BAD_NODE_TIMEOUT);
    int t2 = is_timeout(entry2.assoc4.timestamp, BAD_NODE_TIMEOUT) && is_timeout(entry2.assoc6.timestamp, BAD_NODE_TIMEOUT);

    if (t1 && t2)
        return 0;

    if (t1)
        return -1;

    if (t2)
        return 1;

    t1 = hardening_correct(&entry1.assoc4.hardening) != HARDENING_ALL_OK
         && hardening_correct(&entry1.assoc6.hardening) != HARDENING_ALL_OK;
    t2 = hardening_correct(&entry2.assoc4.hardening) != HARDENING_ALL_OK
         && hardening_correct(&entry2.assoc6.hardening) != HARDENING_ALL_OK;

    if (t1 != t2) {
        if (t1)
            return -1;

        if (t2)
            return 1;
    }

    int close = id_closest(cmp_public_key, entry1.public_key, entry2.public_key);

    if (close == 1)
        return 1;

    if (close == 2)
        return -1;

    return 0;
}
