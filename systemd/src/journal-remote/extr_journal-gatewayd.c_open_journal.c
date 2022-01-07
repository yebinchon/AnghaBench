
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ journal; } ;
typedef TYPE_1__ RequestMeta ;


 int SD_JOURNAL_LOCAL_ONLY ;
 int SD_JOURNAL_SYSTEM ;
 scalar_t__ arg_directory ;
 int assert (TYPE_1__*) ;
 int sd_journal_open (scalar_t__*,int) ;
 int sd_journal_open_directory (scalar_t__*,scalar_t__,int ) ;

__attribute__((used)) static int open_journal(RequestMeta *m) {
        assert(m);

        if (m->journal)
                return 0;

        if (arg_directory)
                return sd_journal_open_directory(&m->journal, arg_directory, 0);
        else
                return sd_journal_open(&m->journal, SD_JOURNAL_LOCAL_ONLY|SD_JOURNAL_SYSTEM);
}
