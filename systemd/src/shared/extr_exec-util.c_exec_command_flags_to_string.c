
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecCommandFlags ;


 size_t ELEMENTSOF (char const**) ;
 char const** exec_command_strings ;

const char* exec_command_flags_to_string(ExecCommandFlags i) {
        size_t idx;

        for (idx = 0; idx < ELEMENTSOF(exec_command_strings); idx++)
                if (i == (1 << idx))
                        return exec_command_strings[idx];

        return ((void*)0);
}
