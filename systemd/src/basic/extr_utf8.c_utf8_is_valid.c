
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int utf8_encoded_valid_unichar (char const*,size_t) ;

char *utf8_is_valid(const char *str) {
        const char *p;

        assert(str);

        p = str;
        while (*p) {
                int len;

                len = utf8_encoded_valid_unichar(p, (size_t) -1);
                if (len < 0)
                        return ((void*)0);

                p += len;
        }

        return (char*) str;
}
