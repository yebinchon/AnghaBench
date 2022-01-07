
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_logger_operations {int dummy; } ;


 scalar_t__ VLC_MSG_ERR ;
 struct vlc_logger_operations const ops ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static const struct vlc_logger_operations *Open(vlc_object_t *obj, void **sysp)
{
    int verbosity = var_InheritInteger(obj, "verbose");

    if (verbosity < 0)
        return ((void*)0);

    verbosity += VLC_MSG_ERR;
    *sysp = (void *)(uintptr_t)verbosity;

    return &ops;
}
