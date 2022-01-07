
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; int buffer; int input_fd; int event; int compress; int output_event_source; } ;
typedef TYPE_1__ RawExport ;


 int free (int ) ;
 int import_compress_free (int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;

RawExport *raw_export_unref(RawExport *e) {
        if (!e)
                return ((void*)0);

        sd_event_source_unref(e->output_event_source);

        import_compress_free(&e->compress);

        sd_event_unref(e->event);

        safe_close(e->input_fd);

        free(e->buffer);
        free(e->path);
        return mfree(e);
}
