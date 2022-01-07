
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tar_pid; scalar_t__ local; scalar_t__ image_root; scalar_t__ settings_path; scalar_t__ final_path; scalar_t__ settings_temp_path; scalar_t__ temp_path; int event; int glue; int signature_job; int checksum_job; int settings_job; int tar_job; } ;
typedef TYPE_1__ TarPull ;


 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int REMOVE_SUBVOLUME ;
 int SIGKILL ;
 int curl_glue_unref (int ) ;
 int free (scalar_t__) ;
 int kill_and_sigcont (int,int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int pull_job_unref (int ) ;
 int rm_rf (scalar_t__,int) ;
 int sd_event_unref (int ) ;
 int unlink (scalar_t__) ;
 int wait_for_terminate (int,int *) ;

TarPull* tar_pull_unref(TarPull *i) {
        if (!i)
                return ((void*)0);

        if (i->tar_pid > 1) {
                (void) kill_and_sigcont(i->tar_pid, SIGKILL);
                (void) wait_for_terminate(i->tar_pid, ((void*)0));
        }

        pull_job_unref(i->tar_job);
        pull_job_unref(i->settings_job);
        pull_job_unref(i->checksum_job);
        pull_job_unref(i->signature_job);

        curl_glue_unref(i->glue);
        sd_event_unref(i->event);

        if (i->temp_path) {
                (void) rm_rf(i->temp_path, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);
                free(i->temp_path);
        }

        if (i->settings_temp_path) {
                (void) unlink(i->settings_temp_path);
                free(i->settings_temp_path);
        }

        free(i->final_path);
        free(i->settings_path);
        free(i->image_root);
        free(i->local);

        return mfree(i);
}
