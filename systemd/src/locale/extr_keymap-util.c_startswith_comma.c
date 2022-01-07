
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_SET (char const,char,char) ;
 char* startswith (char const*,char const*) ;

__attribute__((used)) static bool startswith_comma(const char *s, const char *prefix) {
        s = startswith(s, prefix);
        if (!s)
                return 0;

        return IN_SET(*s, ',', '\0');
}
