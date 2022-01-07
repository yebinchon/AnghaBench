
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecOutput ;


 int EXEC_OUTPUT_JOURNAL_AND_CONSOLE ;
 int EXEC_OUTPUT_KMSG_AND_CONSOLE ;
 int EXEC_OUTPUT_SYSLOG_AND_CONSOLE ;
 int EXEC_OUTPUT_TTY ;
 int IN_SET (int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool is_terminal_output(ExecOutput o) {
        return IN_SET(o,
                      EXEC_OUTPUT_TTY,
                      EXEC_OUTPUT_SYSLOG_AND_CONSOLE,
                      EXEC_OUTPUT_KMSG_AND_CONSOLE,
                      EXEC_OUTPUT_JOURNAL_AND_CONSOLE);
}
