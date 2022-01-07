
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char* cescape_length (char const*,int ) ;
 int strlen (char const*) ;

char *cescape(const char *s) {
        assert(s);

        return cescape_length(s, strlen(s));
}
