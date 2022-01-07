
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_id128_t ;
struct TYPE_4__ {int machine_id_field; } ;
typedef TYPE_1__ Server ;


 int assert (TYPE_1__*) ;
 int sd_id128_get_machine (int *) ;
 int sd_id128_to_string (int ,int ) ;
 int stpcpy (int ,char*) ;

__attribute__((used)) static void server_cache_machine_id(Server *s) {
        sd_id128_t id;
        int r;

        assert(s);

        r = sd_id128_get_machine(&id);
        if (r < 0)
                return;

        sd_id128_to_string(id, stpcpy(s->machine_id_field, "_MACHINE_ID="));
}
