
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BusWaitForJobs ;


 int bus_wait_for_jobs (int *,int,int *) ;
 int bus_wait_for_jobs_add (int *,char const*) ;
 int log_oom () ;

int bus_wait_for_jobs_one(BusWaitForJobs *d, const char *path, bool quiet) {
        int r;

        r = bus_wait_for_jobs_add(d, path);
        if (r < 0)
                return log_oom();

        return bus_wait_for_jobs(d, quiet, ((void*)0));
}
