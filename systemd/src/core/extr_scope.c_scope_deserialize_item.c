
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const Unit ;
struct TYPE_3__ {int was_abandoned; int controller; scalar_t__ deserialized_state; } ;
typedef scalar_t__ ScopeState ;
typedef TYPE_1__ Scope ;
typedef char const FDSet ;


 TYPE_1__* SCOPE (char const*) ;
 int assert (char const*) ;
 int free_and_strdup (int *,char const*) ;
 int log_oom () ;
 int log_unit_debug (char const*,char*,char const*) ;
 int parse_boolean (char const*) ;
 scalar_t__ scope_state_from_string (char const*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int scope_deserialize_item(Unit *u, const char *key, const char *value, FDSet *fds) {
        Scope *s = SCOPE(u);
        int r;

        assert(u);
        assert(key);
        assert(value);
        assert(fds);

        if (streq(key, "state")) {
                ScopeState state;

                state = scope_state_from_string(value);
                if (state < 0)
                        log_unit_debug(u, "Failed to parse state value: %s", value);
                else
                        s->deserialized_state = state;

        } else if (streq(key, "was-abandoned")) {
                int k;

                k = parse_boolean(value);
                if (k < 0)
                        log_unit_debug(u, "Failed to parse boolean value: %s", value);
                else
                        s->was_abandoned = k;
        } else if (streq(key, "controller")) {

                r = free_and_strdup(&s->controller, value);
                if (r < 0)
                        return log_oom();

        } else
                log_unit_debug(u, "Unknown serialization key: %s", key);

        return 0;
}
