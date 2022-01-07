
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOG_TARGET_JOURNAL ;
 scalar_t__ LOG_TARGET_JOURNAL_OR_KMSG ;
 scalar_t__ LOG_TARGET_SYSLOG ;
 scalar_t__ LOG_TARGET_SYSLOG_OR_KMSG ;
 scalar_t__ log_target ;
 int upgrade_syslog_to_journal ;

void log_set_upgrade_syslog_to_journal(bool b) {
        upgrade_syslog_to_journal = b;


        if (b) {
                if (log_target == LOG_TARGET_SYSLOG)
                        log_target = LOG_TARGET_JOURNAL;
                else if (log_target == LOG_TARGET_SYSLOG_OR_KMSG)
                        log_target = LOG_TARGET_JOURNAL_OR_KMSG;
        }
}
