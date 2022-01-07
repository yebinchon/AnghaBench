
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jobs; } ;
typedef TYPE_1__ BusWaitForJobs ;


 int assert (TYPE_1__*) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put_strdup (int ,char const*) ;
 int string_hash_ops ;

int bus_wait_for_jobs_add(BusWaitForJobs *d, const char *path) {
        int r;

        assert(d);

        r = set_ensure_allocated(&d->jobs, &string_hash_ops);
        if (r < 0)
                return r;

        return set_put_strdup(d->jobs, path);
}
