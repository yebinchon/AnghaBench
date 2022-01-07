
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* exit ) () ;} ;


 unsigned int _UDEV_BUILTIN_MAX ;
 TYPE_1__** builtins ;
 int initialized ;
 int stub1 () ;

void udev_builtin_exit(void) {
        unsigned i;

        if (!initialized)
                return;

        for (i = 0; i < _UDEV_BUILTIN_MAX; i++)
                if (builtins[i] && builtins[i]->exit)
                        builtins[i]->exit();

        initialized = 0;
}
