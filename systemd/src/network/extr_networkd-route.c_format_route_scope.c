
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* route_scope_to_string (int) ;
 int strpcpy (char**,size_t,char const*) ;
 int strpcpyf (char**,size_t,char*,int) ;

const char *format_route_scope(int scope, char *buf, size_t size) {
        const char *s;
        char *p = buf;

        s = route_scope_to_string(scope);
        if (s)
                strpcpy(&p, size, s);
        else
                strpcpyf(&p, size, "%d", scope);

        return buf;
}
