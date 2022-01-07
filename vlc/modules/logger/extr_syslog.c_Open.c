
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_logger_operations {int dummy; } ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_MASK (int ) ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int LOG_WARNING ;
 scalar_t__ default_ident ;
 int openlog (char*,int,int) ;
 struct vlc_logger_operations const ops ;
 int setlogmask (int) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 int var_InheritFacility (int *,char*) ;
 char* var_InheritString (int *,char*) ;

__attribute__((used)) static const struct vlc_logger_operations *Open(vlc_object_t *obj,
                                                void **restrict sysp)
{
    if (!var_InheritBool(obj, "syslog"))
        return ((void*)0);

    char *ident = var_InheritString(obj, "syslog-ident");
    if (ident == ((void*)0))
        ident = (char *)default_ident;
    *sysp = ident;


    int facility = var_InheritFacility(obj, "syslog-facility");

    openlog(ident, LOG_PID | LOG_NDELAY, facility);


    int mask = LOG_MASK(LOG_ERR) | LOG_MASK(LOG_WARNING) | LOG_MASK(LOG_INFO);
    if (var_InheritBool(obj, "syslog-debug"))
        mask |= LOG_MASK(LOG_DEBUG);

    setlogmask(mask);

    return &ops;
}
