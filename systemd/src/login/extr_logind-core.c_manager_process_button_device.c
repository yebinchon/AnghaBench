
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_5__ {int buttons; } ;
typedef TYPE_1__ Manager ;
typedef int Button ;


 int DEVICE_ACTION_REMOVE ;
 int assert (TYPE_1__*) ;
 int button_free (int *) ;
 int button_open (int *) ;
 int button_set_seat (int *,char const*) ;
 scalar_t__ device_for_action (int *,int ) ;
 int * hashmap_get (int ,char const*) ;
 scalar_t__ isempty (char const*) ;
 int manager_add_button (TYPE_1__*,char const*,int **) ;
 scalar_t__ sd_device_get_property_value (int *,char*,char const**) ;
 int sd_device_get_sysname (int *,char const**) ;

int manager_process_button_device(Manager *m, sd_device *d) {
        const char *sysname;
        Button *b;
        int r;

        assert(m);

        r = sd_device_get_sysname(d, &sysname);
        if (r < 0)
                return r;

        if (device_for_action(d, DEVICE_ACTION_REMOVE)) {

                b = hashmap_get(m->buttons, sysname);
                if (!b)
                        return 0;

                button_free(b);

        } else {
                const char *sn;

                r = manager_add_button(m, sysname, &b);
                if (r < 0)
                        return r;

                if (sd_device_get_property_value(d, "ID_SEAT", &sn) < 0 || isempty(sn))
                        sn = "seat0";

                button_set_seat(b, sn);

                r = button_open(b);
                if (r < 0)

                        button_free(b);
        }

        return 0;
}
