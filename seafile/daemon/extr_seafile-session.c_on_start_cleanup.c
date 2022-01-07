
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int job_mgr; } ;
typedef int SeafileSession ;


 int cleanup_job_done ;
 int on_start_cleanup_job ;
 TYPE_1__* seaf ;
 int seaf_job_manager_schedule_job (int ,int ,int ,int *) ;

__attribute__((used)) static void
on_start_cleanup (SeafileSession *session)
{
    seaf_job_manager_schedule_job (seaf->job_mgr,
                                   on_start_cleanup_job,
                                   cleanup_job_done,
                                   session);
}
