
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; int iovw; scalar_t__ buf; scalar_t__ name; int passive_fd; } ;
typedef TYPE_1__ JournalImporter ;


 int free (scalar_t__) ;
 int iovw_free_contents (int *,int) ;
 int log_debug (char*,char*,scalar_t__) ;
 int safe_close (scalar_t__) ;

void journal_importer_cleanup(JournalImporter *imp) {
        if (imp->fd >= 0 && !imp->passive_fd) {
                log_debug("Closing %s (fd=%d)", imp->name ?: "importer", imp->fd);
                safe_close(imp->fd);
        }

        free(imp->name);
        free(imp->buf);
        iovw_free_contents(&imp->iovw, 0);
}
