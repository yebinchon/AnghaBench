
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UdevBuiltinCommand ;
struct TYPE_2__ {char const* name; } ;


 size_t _UDEV_BUILTIN_MAX ;
 int assert (int) ;
 TYPE_1__** builtins ;

const char *udev_builtin_name(UdevBuiltinCommand cmd) {
        assert(cmd >= 0 && cmd < _UDEV_BUILTIN_MAX);

        if (!builtins[cmd])
                return ((void*)0);

        return builtins[cmd]->name;
}
