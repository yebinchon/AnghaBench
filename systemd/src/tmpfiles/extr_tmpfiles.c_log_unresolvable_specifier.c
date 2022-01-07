
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int LOG_NOTICE ;
 scalar_t__ arg_user ;
 int log_full (int ,char*,char const*,unsigned int,char*) ;
 int log_notice (char*) ;

__attribute__((used)) static int log_unresolvable_specifier(const char *filename, unsigned line) {
        static bool notified = 0;







        log_full(notified ? LOG_DEBUG : LOG_NOTICE,
                 "[%s:%u] Failed to resolve specifier: %s, skipping",
                 filename, line,
                 arg_user ? "Required $XDG_... variable not defined" : "uninitialized /etc detected");

        if (!notified)
                log_notice("All rules containing unresolvable specifiers will be skipped.");

        notified = 1;
        return 0;
}
