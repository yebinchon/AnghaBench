
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int n_ref; } ;
struct TYPE_5__ {int buffer_event; int event; TYPE_2__* writer; int importer; } ;
typedef TYPE_1__ RemoteSource ;


 int free (TYPE_1__*) ;
 int journal_importer_cleanup (int *) ;
 int log_debug (char*,int ) ;
 int sd_event_source_unref (int ) ;
 int writer_unref (TYPE_2__*) ;

void source_free(RemoteSource *source) {
        if (!source)
                return;

        journal_importer_cleanup(&source->importer);

        log_debug("Writer ref count %i", source->writer->n_ref);
        writer_unref(source->writer);

        sd_event_source_unref(source->event);
        sd_event_source_unref(source->buffer_event);

        free(source);
}
