
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int runtime_storage; scalar_t__ runtime_journal; int system_storage; scalar_t__ system_journal; scalar_t__ oldest_file_usec; } ;
typedef TYPE_1__ Server ;


 int assert (TYPE_1__*) ;
 int do_vacuum (TYPE_1__*,int *,int) ;
 int log_debug (char*) ;

int server_vacuum(Server *s, bool verbose) {
        assert(s);

        log_debug("Vacuuming...");

        s->oldest_file_usec = 0;

        if (s->system_journal)
                do_vacuum(s, &s->system_storage, verbose);
        if (s->runtime_journal)
                do_vacuum(s, &s->runtime_storage, verbose);

        return 0;
}
