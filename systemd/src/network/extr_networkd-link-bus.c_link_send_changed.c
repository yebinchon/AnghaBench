
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Link ;


 int link_send_changed_strv (int *,char**) ;
 char** strv_from_stdarg_alloca (char const*) ;

int link_send_changed(Link *link, const char *property, ...) {
        char **properties;

        properties = strv_from_stdarg_alloca(property);

        return link_send_changed_strv(link, properties);
}
