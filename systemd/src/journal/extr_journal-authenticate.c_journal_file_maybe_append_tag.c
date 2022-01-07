
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int seal; } ;
typedef TYPE_1__ JournalFile ;


 int CLOCK_REALTIME ;
 int assert (TYPE_1__*) ;
 int journal_file_append_tag (TYPE_1__*) ;
 int journal_file_fsprg_evolve (TYPE_1__*,int ) ;
 int journal_file_fsprg_need_evolve (TYPE_1__*,int ) ;
 int now (int ) ;

int journal_file_maybe_append_tag(JournalFile *f, uint64_t realtime) {
        int r;

        assert(f);

        if (!f->seal)
                return 0;

        if (realtime <= 0)
                realtime = now(CLOCK_REALTIME);

        r = journal_file_fsprg_need_evolve(f, realtime);
        if (r <= 0)
                return 0;

        r = journal_file_append_tag(f);
        if (r < 0)
                return r;

        r = journal_file_fsprg_evolve(f, realtime);
        if (r < 0)
                return r;

        return 0;
}
