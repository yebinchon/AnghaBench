
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Unit ;
typedef int JobType ;


 int _JOB_TYPE_MAX ;
 int assert (int) ;
 int job_log_begin_status_message (int *,int ,int ) ;
 int job_print_begin_status_message (int *,int ) ;

__attribute__((used)) static void job_emit_begin_status_message(Unit *u, uint32_t job_id, JobType t) {
        assert(u);
        assert(t >= 0);
        assert(t < _JOB_TYPE_MAX);

        job_log_begin_status_message(u, job_id, t);
        job_print_begin_status_message(u, t);
}
