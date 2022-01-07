
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITESPACE ;
 int assert (char const*) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 int strchr (int ,char const) ;
 size_t strlen (char const*) ;
 int strspn (char const*,int ) ;

char* first_word(const char *s, const char *word) {
        size_t sl, wl;
        const char *p;

        assert(s);
        assert(word);





        sl = strlen(s);
        wl = strlen(word);

        if (sl < wl)
                return ((void*)0);

        if (wl == 0)
                return (char*) s;

        if (memcmp(s, word, wl) != 0)
                return ((void*)0);

        p = s + wl;
        if (*p == 0)
                return (char*) p;

        if (!strchr(WHITESPACE, *p))
                return ((void*)0);

        p += strspn(p, WHITESPACE);
        return (char*) p;
}
