
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int unique_file_lost; int fields_file_lost; int current_invalidate_counter; struct TYPE_7__* fields_file; scalar_t__ fields_offset; int path; int files; struct TYPE_7__* unique_file; scalar_t__ unique_offset; scalar_t__ current_field; struct TYPE_7__* current_file; } ;
typedef TYPE_1__ sd_journal ;
typedef TYPE_1__ JournalFile ;


 int assert (TYPE_1__*) ;
 int journal_file_close (TYPE_1__*) ;
 int log_debug (char*,int ) ;
 void* ordered_hashmap_next (int ,int ) ;
 int ordered_hashmap_remove (int ,int ) ;

__attribute__((used)) static void remove_file_real(sd_journal *j, JournalFile *f) {
        assert(j);
        assert(f);

        (void) ordered_hashmap_remove(j->files, f->path);

        log_debug("File %s removed.", f->path);

        if (j->current_file == f) {
                j->current_file = ((void*)0);
                j->current_field = 0;
        }

        if (j->unique_file == f) {

                j->unique_file = ordered_hashmap_next(j->files, j->unique_file->path);
                j->unique_offset = 0;
                if (!j->unique_file)
                        j->unique_file_lost = 1;
        }

        if (j->fields_file == f) {
                j->fields_file = ordered_hashmap_next(j->files, j->fields_file->path);
                j->fields_offset = 0;
                if (!j->fields_file)
                        j->fields_file_lost = 1;
        }

        (void) journal_file_close(f);

        j->current_invalidate_counter++;
}
