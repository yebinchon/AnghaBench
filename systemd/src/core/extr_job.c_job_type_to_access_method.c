
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ JobType ;


 scalar_t__ IN_SET (scalar_t__,int ,int ,int ) ;
 int JOB_RESTART ;
 int JOB_START ;
 scalar_t__ JOB_STOP ;
 int JOB_TRY_RESTART ;
 scalar_t__ _JOB_TYPE_MAX ;
 int assert (int) ;

const char* job_type_to_access_method(JobType t) {
        assert(t >= 0);
        assert(t < _JOB_TYPE_MAX);

        if (IN_SET(t, JOB_START, JOB_RESTART, JOB_TRY_RESTART))
                return "start";
        else if (t == JOB_STOP)
                return "stop";
        else
                return "reload";
}
