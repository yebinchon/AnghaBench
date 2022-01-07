
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_12__ {int message; } ;
typedef TYPE_1__ sd_bus_error ;
struct TYPE_13__ {int userdata; int bus_path; int (* unit_callback ) (TYPE_3__*,int ,int,int ) ;TYPE_3__* parent; } ;
typedef TYPE_2__ WaitForItem ;
struct TYPE_14__ {int has_failed; TYPE_2__* current; } ;
typedef TYPE_3__ BusWaitForUnits ;


 int assert (TYPE_2__*) ;
 int bus_wait_for_units_check_ready (TYPE_3__*) ;
 int log_debug_errno (int,char*,...) ;
 int sd_bus_error_get_errno (TYPE_1__*) ;
 scalar_t__ sd_bus_error_is_set (TYPE_1__*) ;
 int stub1 (TYPE_3__*,int ,int,int ) ;
 int wait_for_item_free (TYPE_2__*) ;
 int wait_for_item_parse_properties (TYPE_2__*,int *) ;

__attribute__((used)) static int on_get_all_properties(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        WaitForItem *item = userdata;
        int r;

        assert(item);

        if (sd_bus_error_is_set(error)) {
                BusWaitForUnits *d = item->parent;

                d->has_failed = 1;

                log_debug_errno(sd_bus_error_get_errno(error), "GetAll() failed for %s: %s",
                                item->bus_path, error->message);

                d->current = item;
                item->unit_callback(d, item->bus_path, 0, item->userdata);
                wait_for_item_free(item);

                bus_wait_for_units_check_ready(d);
                return 0;
        }

        r = wait_for_item_parse_properties(item, m);
        if (r < 0)
                log_debug_errno(r, "Failed to process GetAll method reply: %m");

        return 0;
}
