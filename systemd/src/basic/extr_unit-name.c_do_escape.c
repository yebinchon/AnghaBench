
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IN_SET (char const,char,char) ;
 int VALID_CHARS ;
 int assert (char const*) ;
 char* do_escape_char (char const,char*) ;
 int strchr (int ,char const) ;

__attribute__((used)) static char *do_escape(const char *f, char *t) {
        assert(f);
        assert(t);


        if (*f == '.') {
                t = do_escape_char(*f, t);
                f++;
        }

        for (; *f; f++) {
                if (*f == '/')
                        *(t++) = '-';
                else if (IN_SET(*f, '-', '\\') || !strchr(VALID_CHARS, *f))
                        t = do_escape_char(*f, t);
                else
                        *(t++) = *f;
        }

        return t;
}
