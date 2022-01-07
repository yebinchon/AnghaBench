
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {int * public_key; } ;
struct TYPE_5__ {TYPE_1__ client; } ;
typedef TYPE_2__ Client_entry ;
typedef int Assoc ;


 TYPE_2__* dist_index_entry (int *,int ) ;

__attribute__((used)) static uint8_t *dist_index_id(Assoc *assoc, uint64_t dist_ind)
{
    Client_entry *entry = dist_index_entry(assoc, dist_ind);

    if (entry)
        return entry->client.public_key;

    return ((void*)0);
}
