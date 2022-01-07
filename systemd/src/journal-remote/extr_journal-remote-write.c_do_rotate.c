
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int path; } ;
typedef TYPE_1__ JournalFile ;


 int journal_file_rotate (TYPE_1__**,int,int ,int,int *) ;
 int log_error_errno (int,char*,...) ;

__attribute__((used)) static int do_rotate(JournalFile **f, bool compress, bool seal) {
        int r = journal_file_rotate(f, compress, (uint64_t) -1, seal, ((void*)0));
        if (r < 0) {
                if (*f)
                        log_error_errno(r, "Failed to rotate %s: %m", (*f)->path);
                else
                        log_error_errno(r, "Failed to create rotated journal: %m");
        }

        return r;
}
