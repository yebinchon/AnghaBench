
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int class; char const* name; } ;
typedef int ExitStatusClass ;


 size_t ELEMENTSOF (TYPE_1__*) ;
 TYPE_1__* exit_status_mappings ;

const char* exit_status_to_string(int code, ExitStatusClass class) {
        if (code < 0 || (size_t) code >= ELEMENTSOF(exit_status_mappings))
                return ((void*)0);
        return class & exit_status_mappings[code].class ? exit_status_mappings[code].name : ((void*)0);
}
