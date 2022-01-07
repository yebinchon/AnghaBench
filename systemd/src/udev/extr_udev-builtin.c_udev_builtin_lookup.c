
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UdevBuiltinCommand ;
struct TYPE_2__ {int name; } ;


 int WHITESPACE ;
 size_t _UDEV_BUILTIN_INVALID ;
 size_t _UDEV_BUILTIN_MAX ;
 int assert (char const*) ;
 TYPE_1__** builtins ;
 size_t strcspn (char const*,int ) ;
 scalar_t__ strneq (int ,char const*,size_t) ;
 scalar_t__ strspn (char const*,int ) ;

UdevBuiltinCommand udev_builtin_lookup(const char *command) {
        UdevBuiltinCommand i;
        size_t n;

        assert(command);

        command += strspn(command, WHITESPACE);
        n = strcspn(command, WHITESPACE);
        for (i = 0; i < _UDEV_BUILTIN_MAX; i++)
                if (builtins[i] && strneq(builtins[i]->name, command, n))
                        return i;

        return _UDEV_BUILTIN_INVALID;
}
