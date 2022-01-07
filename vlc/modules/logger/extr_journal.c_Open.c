
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_logger_operations {int dummy; } ;


 struct vlc_logger_operations const ops ;
 int var_InheritBool (int *,char*) ;

__attribute__((used)) static const struct vlc_logger_operations *Open(vlc_object_t *obj, void **sysp)
{
    if (!var_InheritBool(obj, "syslog"))
        return ((void*)0);

    (void) sysp;
    return &ops;
}
