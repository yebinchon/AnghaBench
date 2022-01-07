
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ExecCommandFlags ;


 int ELEMENTSOF (int ) ;
 int _EXEC_COMMAND_FLAGS_INVALID ;
 int exec_command_strings ;
 int string_table_lookup (int ,int ,char const*) ;

ExecCommandFlags exec_command_flags_from_string(const char *s) {
        ssize_t idx;

        idx = string_table_lookup(exec_command_strings, ELEMENTSOF(exec_command_strings), s);

        if (idx < 0)
                return _EXEC_COMMAND_FLAGS_INVALID;
        else
                return 1 << idx;
}
