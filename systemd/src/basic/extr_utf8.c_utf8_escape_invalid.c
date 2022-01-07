
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTF8_REPLACEMENT_CHARACTER ;
 int assert (char const*) ;
 char* malloc (int) ;
 char* mempcpy (char*,char const*,int) ;
 char* stpcpy (char*,int ) ;
 int str_realloc (char**) ;
 int strlen (char const*) ;
 int utf8_encoded_valid_unichar (char const*,size_t) ;

char *utf8_escape_invalid(const char *str) {
        char *p, *s;

        assert(str);

        p = s = malloc(strlen(str) * 4 + 1);
        if (!p)
                return ((void*)0);

        while (*str) {
                int len;

                len = utf8_encoded_valid_unichar(str, (size_t) -1);
                if (len > 0) {
                        s = mempcpy(s, str, len);
                        str += len;
                } else {
                        s = stpcpy(s, UTF8_REPLACEMENT_CHARACTER);
                        str += 1;
                }
        }

        *s = '\0';
        (void) str_realloc(&p);
        return p;
}
