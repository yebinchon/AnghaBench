
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* result; void* name; int bus; int jobs; } ;
typedef TYPE_1__ BusWaitForJobs ;


 int assert (TYPE_1__*) ;
 int bus_process_wait (int ) ;
 int check_wait_response (TYPE_1__*,int,char const* const*) ;
 int log_debug_errno (int,char*,void*,void*) ;
 int log_error_errno (int,char*) ;
 void* mfree (void*) ;
 int set_isempty (int ) ;

int bus_wait_for_jobs(BusWaitForJobs *d, bool quiet, const char* const* extra_args) {
        int r = 0;

        assert(d);

        while (!set_isempty(d->jobs)) {
                int q;

                q = bus_process_wait(d->bus);
                if (q < 0)
                        return log_error_errno(q, "Failed to wait for response: %m");

                if (d->name && d->result) {
                        q = check_wait_response(d, quiet, extra_args);


                        if (q < 0 && r == 0)
                                r = q;

                        log_debug_errno(q, "Got result %s/%m for job %s", d->result, d->name);
                }

                d->name = mfree(d->name);
                d->result = mfree(d->result);
        }

        return r;
}
