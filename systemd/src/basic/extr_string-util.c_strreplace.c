
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GREEDY_REALLOC (char*,size_t,size_t) ;
 int assert (char const*) ;
 char* mfree (char*) ;
 int startswith (char const*,char const*) ;
 char* stpcpy (char*,char const*) ;
 size_t strlen (char const*) ;

char *strreplace(const char *text, const char *old_string, const char *new_string) {
        size_t l, old_len, new_len, allocated = 0;
        char *t, *ret = ((void*)0);
        const char *f;

        assert(old_string);
        assert(new_string);

        if (!text)
                return ((void*)0);

        old_len = strlen(old_string);
        new_len = strlen(new_string);

        l = strlen(text);
        if (!GREEDY_REALLOC(ret, allocated, l+1))
                return ((void*)0);

        f = text;
        t = ret;
        while (*f) {
                size_t d, nl;

                if (!startswith(f, old_string)) {
                        *(t++) = *(f++);
                        continue;
                }

                d = t - ret;
                nl = l - old_len + new_len;

                if (!GREEDY_REALLOC(ret, allocated, nl + 1))
                        return mfree(ret);

                l = nl;
                t = ret + d;

                t = stpcpy(t, new_string);
                f += old_len;
        }

        *t = 0;
        return ret;
}
