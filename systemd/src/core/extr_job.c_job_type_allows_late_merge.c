
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ JobType ;


 scalar_t__ JOB_RELOAD ;

__attribute__((used)) static bool job_type_allows_late_merge(JobType t) {
        return t != JOB_RELOAD;
}
