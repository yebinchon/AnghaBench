
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int ts_start ;
typedef int ts_span ;
typedef int ts_exit ;


 int EACCES ;
 int ENODATA ;
 int ENOENT ;
 int FORMAT_TIMESPAN_MAX ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int USEC_PER_MSEC ;
 int acpi_get_boot_usec (scalar_t__*,scalar_t__*) ;
 int format_timespan (char*,int,scalar_t__,int ) ;
 scalar_t__ getuid () ;
 int log_full_errno (int ,int,char*) ;
 int log_info (char*,int ,int ,int ) ;

__attribute__((used)) static int test_acpi_fpdt(void) {
        char ts_start[FORMAT_TIMESPAN_MAX], ts_exit[FORMAT_TIMESPAN_MAX], ts_span[FORMAT_TIMESPAN_MAX];
        usec_t loader_start, loader_exit;
        int r;

        r = acpi_get_boot_usec(&loader_start, &loader_exit);
        if (r < 0) {
                bool ok = r == -ENOENT || (getuid() != 0 && r == -EACCES) || r == -ENODATA;

                log_full_errno(ok ? LOG_DEBUG : LOG_ERR, r, "Failed to read ACPI FPDT: %m");
                return ok ? 0 : r;
        }

        log_info("ACPI FPDT: loader start=%s exit=%s duration=%s",
                 format_timespan(ts_start, sizeof(ts_start), loader_start, USEC_PER_MSEC),
                 format_timespan(ts_exit, sizeof(ts_exit), loader_exit, USEC_PER_MSEC),
                 format_timespan(ts_span, sizeof(ts_span), loader_exit - loader_start, USEC_PER_MSEC));
        return 1;
}
