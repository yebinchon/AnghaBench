
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int deferred_closes; } ;
typedef TYPE_1__ Server ;
typedef int JournalFile ;


 scalar_t__ DEFERRED_CLOSES_MAX ;
 int assert (TYPE_1__*) ;
 int assert_se (int *) ;
 int journal_file_close (int *) ;
 int server_process_deferred_closes (TYPE_1__*) ;
 scalar_t__ set_size (int ) ;
 int * set_steal_first (int ) ;

__attribute__((used)) static void server_vacuum_deferred_closes(Server *s) {
        assert(s);


        if (set_size(s->deferred_closes) < DEFERRED_CLOSES_MAX)
                return;


        server_process_deferred_closes(s);


        while (set_size(s->deferred_closes) >= DEFERRED_CLOSES_MAX) {
                JournalFile *f;

                assert_se(f = set_steal_first(s->deferred_closes));
                journal_file_close(f);
        }
}
