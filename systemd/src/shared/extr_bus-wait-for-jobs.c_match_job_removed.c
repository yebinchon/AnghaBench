
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int name; int result; int jobs; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ BusWaitForJobs ;


 int assert (TYPE_1__*) ;
 int bus_log_parse_error (int) ;
 int empty_to_null (char const*) ;
 int free (char*) ;
 int free_and_strdup (int *,int ) ;
 int sd_bus_message_read (TYPE_1__*,char*,int *,char const**,char const**,char const**) ;
 char* set_remove (int ,char*) ;

__attribute__((used)) static int match_job_removed(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char *path, *unit, *result;
        BusWaitForJobs *d = userdata;
        uint32_t id;
        char *found;
        int r;

        assert(m);
        assert(d);

        r = sd_bus_message_read(m, "uoss", &id, &path, &unit, &result);
        if (r < 0) {
                bus_log_parse_error(r);
                return 0;
        }

        found = set_remove(d->jobs, (char*) path);
        if (!found)
                return 0;

        free(found);

        (void) free_and_strdup(&d->result, empty_to_null(result));

        (void) free_and_strdup(&d->name, empty_to_null(unit));

        return 0;
}
