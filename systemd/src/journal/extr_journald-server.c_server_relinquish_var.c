
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ storage; int deferred_closes; int user_journals; scalar_t__ system_journal; scalar_t__ runtime_journal; } ;
typedef TYPE_1__ Server ;


 scalar_t__ ENOENT ;
 scalar_t__ STORAGE_NONE ;
 int assert (TYPE_1__*) ;
 scalar_t__ errno ;
 scalar_t__ journal_file_close (scalar_t__) ;
 int log_debug (char*) ;
 int log_warning_errno (scalar_t__,char*) ;
 int ordered_hashmap_clear_with_destructor (int ,scalar_t__ (*) (scalar_t__)) ;
 int set_clear_with_destructor (int ,scalar_t__ (*) (scalar_t__)) ;
 int system_journal_open (TYPE_1__*,int,int) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static int server_relinquish_var(Server *s) {
        assert(s);

        if (s->storage == STORAGE_NONE)
                return 0;

        if (s->runtime_journal && !s->system_journal)
                return 0;

        log_debug("Relinquishing /var...");

        (void) system_journal_open(s, 0, 1);

        s->system_journal = journal_file_close(s->system_journal);
        ordered_hashmap_clear_with_destructor(s->user_journals, journal_file_close);
        set_clear_with_destructor(s->deferred_closes, journal_file_close);

        if (unlink("/run/systemd/journal/flushed") < 0 && errno != ENOENT)
                log_warning_errno(errno, "Failed to unlink /run/systemd/journal/flushed, ignoring: %m");

        return 0;
}
