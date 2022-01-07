
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct iovec {int dummy; } ;
struct TYPE_4__ {scalar_t__ monotonic; scalar_t__ realtime; } ;
typedef TYPE_1__ dual_timestamp ;
typedef int JournalFile ;


 struct iovec IOVEC_MAKE_STRING (char*) ;
 scalar_t__ asprintf (char**,char*,int) ;
 int assert_ret (int ) ;
 int assert_se (int) ;
 int dual_timestamp_get (TYPE_1__*) ;
 int free (char*) ;
 int journal_file_append_entry (int *,TYPE_1__*,int *,struct iovec*,int,int *,int *,int *) ;

__attribute__((used)) static void append_number(JournalFile *f, int n, uint64_t *seqnum) {
        char *p;
        dual_timestamp ts;
        static dual_timestamp previous_ts = {};
        struct iovec iovec[1];

        dual_timestamp_get(&ts);

        if (ts.monotonic <= previous_ts.monotonic)
                ts.monotonic = previous_ts.monotonic + 1;

        if (ts.realtime <= previous_ts.realtime)
                ts.realtime = previous_ts.realtime + 1;

        previous_ts = ts;

        assert_se(asprintf(&p, "NUMBER=%d", n) >= 0);
        iovec[0] = IOVEC_MAKE_STRING(p);
        assert_ret(journal_file_append_entry(f, &ts, ((void*)0), iovec, 1, seqnum, ((void*)0), ((void*)0)));
        free(p);
}
