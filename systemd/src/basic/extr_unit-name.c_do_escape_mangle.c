
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* VALID_CHARS_GLOB ;
 char* VALID_CHARS_WITH_AT ;
 int assert (char const*) ;
 char* do_escape_char (char const,char*) ;
 int strchr (char const*,char const) ;

__attribute__((used)) static bool do_escape_mangle(const char *f, bool allow_globs, char *t) {
        const char *valid_chars;
        bool mangled = 0;

        assert(f);
        assert(t);






        valid_chars = allow_globs ? VALID_CHARS_GLOB : VALID_CHARS_WITH_AT;

        for (; *f; f++)
                if (*f == '/') {
                        *(t++) = '-';
                        mangled = 1;
                } else if (!strchr(valid_chars, *f)) {
                        t = do_escape_char(*f, t);
                        mangled = 1;
                } else
                        *(t++) = *f;
        *t = 0;

        return mangled;
}
