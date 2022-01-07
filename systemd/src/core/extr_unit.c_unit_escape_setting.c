
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitWriteFlags ;


 int UNIT_ESCAPE_C ;
 int UNIT_ESCAPE_SPECIFIERS ;
 char* cescape (char const*) ;
 int free (char*) ;
 char* specifier_escape (char const*) ;
 char* strdup (char const*) ;

char* unit_escape_setting(const char *s, UnitWriteFlags flags, char **buf) {
        char *ret = ((void*)0);

        if (!s)
                return ((void*)0);
        if (flags & UNIT_ESCAPE_SPECIFIERS) {
                ret = specifier_escape(s);
                if (!ret)
                        return ((void*)0);

                s = ret;
        }

        if (flags & UNIT_ESCAPE_C) {
                char *a;

                a = cescape(s);
                free(ret);
                if (!a)
                        return ((void*)0);

                ret = a;
        }

        if (buf) {
                *buf = ret;
                return ret ?: (char*) s;
        }

        return ret ?: strdup(s);
}
