
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int fsprg_state; int seal; } ;
typedef TYPE_1__ JournalFile ;


 int ESTALE ;
 scalar_t__ FSPRG_GetEpoch (int ) ;
 int assert (TYPE_1__*) ;
 int journal_file_get_epoch (TYPE_1__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int journal_file_fsprg_need_evolve(JournalFile *f, uint64_t realtime) {
        uint64_t goal, epoch;
        int r;
        assert(f);

        if (!f->seal)
                return 0;

        r = journal_file_get_epoch(f, realtime, &goal);
        if (r < 0)
                return r;

        epoch = FSPRG_GetEpoch(f->fsprg_state);
        if (epoch > goal)
                return -ESTALE;

        return epoch != goal;
}
