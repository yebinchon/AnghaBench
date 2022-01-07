
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ascii_toupper (char) ;
 int assert (char*) ;

char *ascii_strupper(char *t) {
        char *p;

        assert(t);

        for (p = t; *p; p++)
                *p = ascii_toupper(*p);

        return t;
}
