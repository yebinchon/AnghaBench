
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tar_pid; scalar_t__ local; scalar_t__ image_root; scalar_t__ final_path; int tar_fd; int event; int compress; scalar_t__ temp_path; int input_event_source; } ;
typedef TYPE_1__ TarImport ;


 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int REMOVE_SUBVOLUME ;
 int SIGKILL ;
 int free (scalar_t__) ;
 int import_compress_free (int *) ;
 int kill_and_sigcont (int,int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int rm_rf (scalar_t__,int) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int wait_for_terminate (int,int *) ;

TarImport* tar_import_unref(TarImport *i) {
        if (!i)
                return ((void*)0);

        sd_event_source_unref(i->input_event_source);

        if (i->tar_pid > 1) {
                (void) kill_and_sigcont(i->tar_pid, SIGKILL);
                (void) wait_for_terminate(i->tar_pid, ((void*)0));
        }

        if (i->temp_path) {
                (void) rm_rf(i->temp_path, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);
                free(i->temp_path);
        }

        import_compress_free(&i->compress);

        sd_event_unref(i->event);

        safe_close(i->tar_fd);

        free(i->final_path);
        free(i->image_root);
        free(i->local);
        return mfree(i);
}
