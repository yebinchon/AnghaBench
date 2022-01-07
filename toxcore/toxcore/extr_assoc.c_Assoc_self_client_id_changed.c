
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int self_client_id; scalar_t__ self_hash; } ;
typedef TYPE_1__ Assoc ;


 int client_id_self_update (TYPE_1__*) ;
 int id_copy (int ,int const*) ;

void Assoc_self_client_id_changed(Assoc *assoc, const uint8_t *id)
{
    if (assoc && id) {
        assoc->self_hash = 0;
        id_copy(assoc->self_client_id, id);
        client_id_self_update(assoc);
    }
}
