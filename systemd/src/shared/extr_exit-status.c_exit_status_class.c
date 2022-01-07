
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int class; } ;


 size_t ELEMENTSOF (TYPE_1__*) ;




 TYPE_1__* exit_status_mappings ;

const char* exit_status_class(int code) {
        if (code < 0 || (size_t) code >= ELEMENTSOF(exit_status_mappings))
                return ((void*)0);

        switch (exit_status_mappings[code].class) {
        case 130:
                return "libc";
        case 128:
                return "systemd";
        case 129:
                return "LSB";
        case 131:
                return "BSD";
        default: return ((void*)0);
        }
}
