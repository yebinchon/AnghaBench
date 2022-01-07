
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sd_id128_t ;
struct TYPE_8__ {scalar_t__* invocation_id_string; int invocation_id; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_7__ {int units_by_invocation_id; } ;


 int SD_ID128_NULL ;
 int assert (TYPE_2__*) ;
 int hashmap_ensure_allocated (int *,int *) ;
 int hashmap_put (int ,int *,TYPE_2__*) ;
 int hashmap_remove_value (int ,int *,TYPE_2__*) ;
 int id128_hash_ops ;
 scalar_t__ sd_id128_equal (int ,int ) ;
 scalar_t__ sd_id128_is_null (int ) ;
 int sd_id128_to_string (int ,scalar_t__*) ;

int unit_set_invocation_id(Unit *u, sd_id128_t id) {
        int r;

        assert(u);



        if (sd_id128_equal(u->invocation_id, id))
                return 0;

        if (!sd_id128_is_null(u->invocation_id))
                (void) hashmap_remove_value(u->manager->units_by_invocation_id, &u->invocation_id, u);

        if (sd_id128_is_null(id)) {
                r = 0;
                goto reset;
        }

        r = hashmap_ensure_allocated(&u->manager->units_by_invocation_id, &id128_hash_ops);
        if (r < 0)
                goto reset;

        u->invocation_id = id;
        sd_id128_to_string(id, u->invocation_id_string);

        r = hashmap_put(u->manager->units_by_invocation_id, &u->invocation_id, u);
        if (r < 0)
                goto reset;

        return 0;

reset:
        u->invocation_id = SD_ID128_NULL;
        u->invocation_id_string[0] = 0;
        return r;
}
