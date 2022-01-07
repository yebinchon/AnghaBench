
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEWLINE ;
 int WHITESPACE ;
 int next_header (char const**) ;
 char* startswith (char const*,char const*) ;
 int strcspn (char const*,int ) ;
 char* strndup (char const*,int ) ;
 int strspn (char const*,int ) ;

__attribute__((used)) static char *find_header(const char *s, const char *header) {

        for (;;) {
                const char *v;

                v = startswith(s, header);
                if (v) {
                        v += strspn(v, WHITESPACE);
                        return strndup(v, strcspn(v, NEWLINE));
                }

                if (!next_header(&s))
                        return ((void*)0);
        }
}
