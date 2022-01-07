
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* help; } ;


 unsigned int _UDEV_BUILTIN_MAX ;
 TYPE_1__** builtins ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

void udev_builtin_list(void) {
        unsigned i;

        for (i = 0; i < _UDEV_BUILTIN_MAX; i++)
                if (builtins[i])
                        fprintf(stderr, "  %-14s  %s\n", builtins[i]->name, builtins[i]->help);
}
