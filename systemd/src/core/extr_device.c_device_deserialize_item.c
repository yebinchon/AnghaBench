
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const Unit ;
struct TYPE_3__ {int deserialized_found; scalar_t__ deserialized_state; } ;
typedef char const FDSet ;
typedef scalar_t__ DeviceState ;
typedef TYPE_1__ Device ;


 TYPE_1__* DEVICE (char const*) ;
 int assert (char const*) ;
 int device_found_from_string_many (char const*,int *) ;
 scalar_t__ device_state_from_string (char const*) ;
 int log_unit_debug (char const*,char*,char const*) ;
 int log_unit_debug_errno (char const*,int,char*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int device_deserialize_item(Unit *u, const char *key, const char *value, FDSet *fds) {
        Device *d = DEVICE(u);
        int r;

        assert(u);
        assert(key);
        assert(value);
        assert(fds);

        if (streq(key, "state")) {
                DeviceState state;

                state = device_state_from_string(value);
                if (state < 0)
                        log_unit_debug(u, "Failed to parse state value, ignoring: %s", value);
                else
                        d->deserialized_state = state;

        } else if (streq(key, "found")) {
                r = device_found_from_string_many(value, &d->deserialized_found);
                if (r < 0)
                        log_unit_debug_errno(u, r, "Failed to parse found value '%s', ignoring: %m", value);

        } else
                log_unit_debug(u, "Unknown serialization key: %s", key);

        return 0;
}
