
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Unit ;
typedef int JobType ;
typedef int JobResult ;


 int assert (int *) ;
 int job_log_done_status_message (int *,int ,int ,int ) ;
 int job_print_done_status_message (int *,int ,int ) ;

__attribute__((used)) static void job_emit_done_status_message(Unit *u, uint32_t job_id, JobType t, JobResult result) {
        assert(u);

        job_log_done_status_message(u, job_id, t, result);
        job_print_done_status_message(u, t, result);
}
