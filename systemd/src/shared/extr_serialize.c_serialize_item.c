
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const FILE ;


 int EINVAL ;
 scalar_t__ LONG_LINE_MAX ;
 int assert (char const*) ;
 int fputc (char,char const*) ;
 int fputs (char const*,char const*) ;
 int log_warning (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

int serialize_item(FILE *f, const char *key, const char *value) {
        assert(f);
        assert(key);

        if (!value)
                return 0;



        if (strlen(key) + 1 + strlen(value) + 1 > LONG_LINE_MAX) {
                log_warning("Attempted to serialize overly long item '%s', refusing.", key);
                return -EINVAL;
        }

        fputs(key, f);
        fputc('=', f);
        fputs(value, f);
        fputc('\n', f);

        return 1;
}
