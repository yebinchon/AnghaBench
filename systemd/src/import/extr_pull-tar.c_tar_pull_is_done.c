
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* signature_job; struct TYPE_5__* checksum_job; struct TYPE_5__* settings_job; struct TYPE_5__* tar_job; } ;
typedef TYPE_1__ TarPull ;


 int PULL_JOB_IS_COMPLETE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool tar_pull_is_done(TarPull *i) {
        assert(i);
        assert(i->tar_job);

        if (!PULL_JOB_IS_COMPLETE(i->tar_job))
                return 0;
        if (i->settings_job && !PULL_JOB_IS_COMPLETE(i->settings_job))
                return 0;
        if (i->checksum_job && !PULL_JOB_IS_COMPLETE(i->checksum_job))
                return 0;
        if (i->signature_job && !PULL_JOB_IS_COMPLETE(i->signature_job))
                return 0;

        return 1;
}
