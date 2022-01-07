
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int parse_boolean (char const*) ;
 char* secure_getenv (char const*) ;

int getenv_bool_secure(const char *p) {
        const char *e;

        e = secure_getenv(p);
        if (!e)
                return -ENXIO;

        return parse_boolean(e);
}
