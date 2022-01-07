
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int strtol (char const*,char**,int ) ;

__attribute__((used)) static char* parse_token(const char *current, int32_t *val_out) {
        char *next;
        int32_t val;

        if (!current)
                return ((void*)0);

        val = strtol(current, &next, 0);
        if (*next && *next != ':')
                return ((void*)0);

        if (next != current)
                *val_out = val;

        if (*next)
                next++;

        return next;
}
