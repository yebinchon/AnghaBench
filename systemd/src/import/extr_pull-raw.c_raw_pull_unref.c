
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ local; scalar_t__ image_root; scalar_t__ settings_path; scalar_t__ roothash_path; scalar_t__ final_path; scalar_t__ settings_temp_path; scalar_t__ roothash_temp_path; scalar_t__ temp_path; int event; int glue; int signature_job; int checksum_job; int roothash_job; int settings_job; int raw_job; } ;
typedef TYPE_1__ RawPull ;


 int curl_glue_unref (int ) ;
 int free (scalar_t__) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int pull_job_unref (int ) ;
 int sd_event_unref (int ) ;
 int unlink (scalar_t__) ;

RawPull* raw_pull_unref(RawPull *i) {
        if (!i)
                return ((void*)0);

        pull_job_unref(i->raw_job);
        pull_job_unref(i->settings_job);
        pull_job_unref(i->roothash_job);
        pull_job_unref(i->checksum_job);
        pull_job_unref(i->signature_job);

        curl_glue_unref(i->glue);
        sd_event_unref(i->event);

        if (i->temp_path) {
                (void) unlink(i->temp_path);
                free(i->temp_path);
        }

        if (i->roothash_temp_path) {
                (void) unlink(i->roothash_temp_path);
                free(i->roothash_temp_path);
        }

        if (i->settings_temp_path) {
                (void) unlink(i->settings_temp_path);
                free(i->settings_temp_path);
        }

        free(i->final_path);
        free(i->roothash_path);
        free(i->settings_path);
        free(i->image_root);
        free(i->local);
        return mfree(i);
}
