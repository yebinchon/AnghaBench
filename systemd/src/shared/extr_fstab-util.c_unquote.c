
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ strchr (char const*,char const) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 char* strndup (char const*,size_t) ;

__attribute__((used)) static char *unquote(const char *s, const char* quotes) {
        size_t l;
        assert(s);







        l = strlen(s);
        if (l < 2)
                return strdup(s);

        if (strchr(quotes, s[0]) && s[l-1] == s[0])
                return strndup(s+1, l-2);

        return strdup(s);
}
