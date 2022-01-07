
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ count; TYPE_1__* iovec; } ;
struct TYPE_12__ {TYPE_3__ iovw; int boot_id; int ts; int name; int fd; } ;
struct TYPE_10__ {TYPE_6__ importer; struct TYPE_10__* writer; } ;
typedef TYPE_1__ RemoteSource ;


 int EBADMSG ;
 int assert (TYPE_1__*) ;
 int iovw_size (TYPE_3__*) ;
 int journal_importer_drop_iovw (TYPE_6__*) ;
 int journal_importer_process_data (TYPE_6__*) ;
 int log_error_errno (int,char*,...) ;
 int log_trace (char*,TYPE_1__*,int ,int ) ;
 int log_warning (char*) ;
 int writer_write (TYPE_1__*,TYPE_3__*,int *,int *,int,int) ;

int process_source(RemoteSource *source, bool compress, bool seal) {
        int r;

        assert(source);
        assert(source->writer);

        r = journal_importer_process_data(&source->importer);
        if (r <= 0)
                return r;


        log_trace("Received full event from source@%p fd:%d (%s)",
                  source, source->importer.fd, source->importer.name);

        if (source->importer.iovw.count == 0) {
                log_warning("Entry with no payload, skipping");
                goto freeing;
        }

        assert(source->importer.iovw.iovec);

        r = writer_write(source->writer,
                         &source->importer.iovw,
                         &source->importer.ts,
                         &source->importer.boot_id,
                         compress, seal);
        if (r == -EBADMSG) {
                log_error_errno(r, "Entry is invalid, ignoring.");
                r = 0;
        } else if (r < 0)
                log_error_errno(r, "Failed to write entry of %zu bytes: %m",
                                iovw_size(&source->importer.iovw));
        else
                r = 1;

 freeing:
        journal_importer_drop_iovw(&source->importer);
        return r;
}
