
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecOutput ;


 int EXEC_OUTPUT_KMSG ;
 int EXEC_OUTPUT_KMSG_AND_CONSOLE ;
 int IN_SET (int ,int ,int ) ;

__attribute__((used)) static bool is_kmsg_output(ExecOutput o) {
        return IN_SET(o,
                      EXEC_OUTPUT_KMSG,
                      EXEC_OUTPUT_KMSG_AND_CONSOLE);
}
