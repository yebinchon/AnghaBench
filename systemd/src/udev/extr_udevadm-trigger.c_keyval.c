
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static char* keyval(const char *str, const char **key, const char **val) {
        char *buf, *pos;

        buf = strdup(str);
        if (!buf)
                return ((void*)0);

        pos = strchr(buf, '=');
        if (pos) {
                pos[0] = 0;
                pos++;
        }

        *key = buf;
        *val = pos;

        return buf;
}
