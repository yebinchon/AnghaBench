
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ next_start; } ;
typedef TYPE_1__ FormData_bgw_job_stat ;


 scalar_t__ DT_NOBEGIN ;

__attribute__((used)) static bool
bgw_job_stat_next_start_was_set(FormData_bgw_job_stat *fd)
{
 return fd->next_start != DT_NOBEGIN;
}
