
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int console_mode; } ;
typedef TYPE_1__ Settings ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 int CONSOLE_PIPE ;
 int _CONSOLE_MODE_INVALID ;
 scalar_t__ json_variant_boolean (int *) ;

__attribute__((used)) static int oci_terminal(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        Settings *s = userdata;



        s->console_mode = json_variant_boolean(v) ? _CONSOLE_MODE_INVALID : CONSOLE_PIPE;
        return 0;
}
