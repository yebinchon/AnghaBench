
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int limit; } ;
struct TYPE_13__ {int n_max_files; } ;
struct TYPE_14__ {TYPE_10__ space; int path; int oldest_file_usec; int max_retention_usec; TYPE_1__ metrics; } ;
typedef TYPE_2__ Server ;
typedef TYPE_2__ JournalStorage ;


 int ENOENT ;
 int assert (TYPE_2__*) ;
 int cache_space_invalidate (TYPE_10__*) ;
 int cache_space_refresh (TYPE_2__*,TYPE_2__*) ;
 int journal_directory_vacuum (int ,int ,int ,int ,int *,int) ;
 int log_warning_errno (int,char*,int ) ;
 int server_space_usage_message (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void do_vacuum(Server *s, JournalStorage *storage, bool verbose) {

        int r;

        assert(s);
        assert(storage);

        (void) cache_space_refresh(s, storage);

        if (verbose)
                server_space_usage_message(s, storage);

        r = journal_directory_vacuum(storage->path, storage->space.limit,
                                     storage->metrics.n_max_files, s->max_retention_usec,
                                     &s->oldest_file_usec, verbose);
        if (r < 0 && r != -ENOENT)
                log_warning_errno(r, "Failed to vacuum %s, ignoring: %m", storage->path);

        cache_space_invalidate(&storage->space);
}
