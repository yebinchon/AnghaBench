
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tar_pid; scalar_t__ path; scalar_t__ buffer; int tar_fd; int event; int compress; scalar_t__ temp_path; int output_event_source; } ;
typedef TYPE_1__ TarExport ;


 int BTRFS_REMOVE_QUOTA ;
 int SIGKILL ;
 int btrfs_subvol_remove (scalar_t__,int ) ;
 int free (scalar_t__) ;
 int import_compress_free (int *) ;
 int kill_and_sigcont (int,int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int wait_for_terminate (int,int *) ;

TarExport *tar_export_unref(TarExport *e) {
        if (!e)
                return ((void*)0);

        sd_event_source_unref(e->output_event_source);

        if (e->tar_pid > 1) {
                (void) kill_and_sigcont(e->tar_pid, SIGKILL);
                (void) wait_for_terminate(e->tar_pid, ((void*)0));
        }

        if (e->temp_path) {
                (void) btrfs_subvol_remove(e->temp_path, BTRFS_REMOVE_QUOTA);
                free(e->temp_path);
        }

        import_compress_free(&e->compress);

        sd_event_unref(e->event);

        safe_close(e->tar_fd);

        free(e->buffer);
        free(e->path);
        return mfree(e);
}
