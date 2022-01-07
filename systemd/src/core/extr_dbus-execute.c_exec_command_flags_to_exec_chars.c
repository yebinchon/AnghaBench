
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecCommandFlags ;


 int EXEC_COMMAND_AMBIENT_MAGIC ;
 int EXEC_COMMAND_FULLY_PRIVILEGED ;
 int EXEC_COMMAND_IGNORE_FAILURE ;
 int EXEC_COMMAND_NO_ENV_EXPAND ;
 int EXEC_COMMAND_NO_SETUID ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 char* strjoin (char*,char*,char*,char*,char*) ;

__attribute__((used)) static char *exec_command_flags_to_exec_chars(ExecCommandFlags flags) {
        return strjoin(FLAGS_SET(flags, EXEC_COMMAND_IGNORE_FAILURE) ? "-" : "",
                       FLAGS_SET(flags, EXEC_COMMAND_NO_ENV_EXPAND) ? ":" : "",
                       FLAGS_SET(flags, EXEC_COMMAND_FULLY_PRIVILEGED) ? "+" : "",
                       FLAGS_SET(flags, EXEC_COMMAND_NO_SETUID) ? "!" : "",
                       FLAGS_SET(flags, EXEC_COMMAND_AMBIENT_MAGIC) ? "!!" : "");
}
