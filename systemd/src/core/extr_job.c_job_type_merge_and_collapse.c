
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef scalar_t__ JobType ;


 int EEXIST ;
 scalar_t__ job_type_collapse (scalar_t__,int *) ;
 scalar_t__ job_type_lookup_merge (scalar_t__,scalar_t__) ;

int job_type_merge_and_collapse(JobType *a, JobType b, Unit *u) {
        JobType t;

        t = job_type_lookup_merge(*a, b);
        if (t < 0)
                return -EEXIST;

        *a = job_type_collapse(t, u);
        return 0;
}
