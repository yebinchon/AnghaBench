
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int s ;
struct TYPE_5__ {int realtime; int monotonic; } ;
typedef TYPE_1__ dual_timestamp ;


 int EACCES ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int FORMAT_TIMESPAN_MAX ;
 int FORMAT_TIMESTAMP_MAX ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MAX (int ,int ) ;
 int boot_timestamps (int *,TYPE_1__*,TYPE_1__*) ;
 int dual_timestamp_from_monotonic (TYPE_1__*,int ) ;
 int format_timespan (char*,int,int ,int ) ;
 int format_timestamp (char*,int,int ) ;
 scalar_t__ getuid () ;
 int log_full_errno (int ,int,char*) ;
 int log_info (char*,int ) ;

__attribute__((used)) static int test_boot_timestamps(void) {
        char s[MAX(FORMAT_TIMESPAN_MAX, FORMAT_TIMESTAMP_MAX)];
        dual_timestamp fw, l, k;
        int r;

        dual_timestamp_from_monotonic(&k, 0);

        r = boot_timestamps(((void*)0), &fw, &l);
        if (r < 0) {
                bool ok = r == -ENOENT || (getuid() != 0 && r == -EACCES) || r == -EOPNOTSUPP;

                log_full_errno(ok ? LOG_DEBUG : LOG_ERR, r, "Failed to read variables: %m");
                return ok ? 0 : r;
        }

        log_info("Firmware began %s before kernel.", format_timespan(s, sizeof(s), fw.monotonic, 0));
        log_info("Loader began %s before kernel.", format_timespan(s, sizeof(s), l.monotonic, 0));
        log_info("Firmware began %s.", format_timestamp(s, sizeof(s), fw.realtime));
        log_info("Loader began %s.", format_timestamp(s, sizeof(s), l.realtime));
        log_info("Kernel began %s.", format_timestamp(s, sizeof(s), k.realtime));
        return 1;
}
