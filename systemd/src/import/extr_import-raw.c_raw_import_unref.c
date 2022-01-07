
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ local; scalar_t__ image_root; scalar_t__ final_path; int output_fd; int input_event_source; int compress; scalar_t__ temp_path; int event; } ;
typedef TYPE_1__ RawImport ;


 int free (scalar_t__) ;
 int import_compress_free (int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int unlink (scalar_t__) ;

RawImport* raw_import_unref(RawImport *i) {
        if (!i)
                return ((void*)0);

        sd_event_unref(i->event);

        if (i->temp_path) {
                (void) unlink(i->temp_path);
                free(i->temp_path);
        }

        import_compress_free(&i->compress);

        sd_event_source_unref(i->input_event_source);

        safe_close(i->output_fd);

        free(i->final_path);
        free(i->image_root);
        free(i->local);
        return mfree(i);
}
