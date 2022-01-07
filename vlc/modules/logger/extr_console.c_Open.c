
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_logger_operations {int dummy; } ;


 int STDERR_FILENO ;
 int VLC_MSG_DBG ;
 scalar_t__ VLC_MSG_ERR ;
 int atoi (char const*) ;
 struct vlc_logger_operations const color_ops ;
 char* getenv (char*) ;
 struct vlc_logger_operations const gray_ops ;
 scalar_t__ isatty (int ) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 int var_InheritInteger (int *,char*) ;
 void* verbosities ;

__attribute__((used)) static const struct vlc_logger_operations *Open(vlc_object_t *obj,
                                                void **restrict sysp)
{
    int verbosity = -1;

    if (!var_InheritBool(obj, "quiet"))
    {
        const char *str = getenv("VLC_VERBOSE");
        if (str != ((void*)0))
           verbosity = atoi(str);
        else
           verbosity = var_InheritInteger(obj, "verbose");
    }

    if (verbosity < 0)
        return ((void*)0);

    verbosity += VLC_MSG_ERR;
    if (verbosity > VLC_MSG_DBG)
        verbosity = VLC_MSG_DBG;

    *sysp = verbosities + verbosity;





    return &gray_ops;
}
