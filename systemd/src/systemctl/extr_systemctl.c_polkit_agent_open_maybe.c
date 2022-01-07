
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNIT_FILE_SYSTEM ;
 int arg_ask_password ;
 scalar_t__ arg_scope ;
 int arg_transport ;
 int polkit_agent_open_if_enabled (int ,int ) ;

__attribute__((used)) static void polkit_agent_open_maybe(void) {


        if (arg_scope != UNIT_FILE_SYSTEM)
                return;

        polkit_agent_open_if_enabled(arg_transport, arg_ask_password);
}
