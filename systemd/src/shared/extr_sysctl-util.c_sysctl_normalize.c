
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char*,char*) ;

char *sysctl_normalize(char *s) {
        char *n;

        n = strpbrk(s, "/.");



        if (!n || *n == '/')
                return s;



        while (n) {
                if (*n == '.')
                        *n = '/';
                else
                        *n = '.';

                n = strpbrk(n + 1, "/.");
        }

        return s;
}
