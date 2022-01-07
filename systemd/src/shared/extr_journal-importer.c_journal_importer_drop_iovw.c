
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t filled; size_t offset; size_t scanned; size_t size; char* buf; int iovw; } ;
typedef TYPE_1__ JournalImporter ;


 int LINE_CHUNK ;
 int iovw_free_contents (int *,int) ;
 int log_debug (char*,size_t,size_t) ;
 int log_warning (char*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;

void journal_importer_drop_iovw(JournalImporter *imp) {
        size_t remain, target;



        iovw_free_contents(&imp->iovw, 0);


        remain = imp->filled - imp->offset;

        if (remain == 0)
                imp->offset = imp->scanned = imp->filled = 0;
        else if (imp->offset > imp->size - imp->filled &&
                 imp->offset > remain) {
                memcpy(imp->buf, imp->buf + imp->offset, remain);
                imp->offset = imp->scanned = 0;
                imp->filled = remain;
        }

        target = imp->size;
        while (target > 16 * LINE_CHUNK && imp->filled < target / 2)
                target /= 2;
        if (target < imp->size) {
                char *tmp;

                tmp = realloc(imp->buf, target);
                if (!tmp)
                        log_warning("Failed to reallocate buffer to (smaller) size %zu",
                                    target);
                else {
                        log_debug("Reallocated buffer from %zu to %zu bytes",
                                  imp->size, target);
                        imp->buf = tmp;
                        imp->size = target;
                }
        }
}
