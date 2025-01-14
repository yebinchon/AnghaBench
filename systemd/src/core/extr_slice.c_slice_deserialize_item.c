
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const Unit ;
struct TYPE_3__ {scalar_t__ deserialized_state; } ;
typedef scalar_t__ SliceState ;
typedef TYPE_1__ Slice ;
typedef char const FDSet ;


 TYPE_1__* SLICE (char const*) ;
 int assert (char const*) ;
 int log_debug (char*,char const*) ;
 scalar_t__ slice_state_from_string (char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int slice_deserialize_item(Unit *u, const char *key, const char *value, FDSet *fds) {
        Slice *s = SLICE(u);

        assert(u);
        assert(key);
        assert(value);
        assert(fds);

        if (streq(key, "state")) {
                SliceState state;

                state = slice_state_from_string(value);
                if (state < 0)
                        log_debug("Failed to parse state value %s", value);
                else
                        s->deserialized_state = state;

        } else
                log_debug("Unknown serialization key '%s'", key);

        return 0;
}
