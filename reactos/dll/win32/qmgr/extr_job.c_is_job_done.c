
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ BackgroundCopyJobImpl ;
typedef int BOOL ;


 scalar_t__ BG_JOB_STATE_ACKNOWLEDGED ;
 scalar_t__ BG_JOB_STATE_CANCELLED ;

__attribute__((used)) static inline BOOL is_job_done(const BackgroundCopyJobImpl *job)
{
    return job->state == BG_JOB_STATE_CANCELLED || job->state == BG_JOB_STATE_ACKNOWLEDGED;
}
