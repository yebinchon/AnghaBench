
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int free (char*) ;
 char* malloc (size_t) ;
 char* realloc (char*,size_t) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static char *vstrfmtmake (size_t *lenp, const char *fmt, va_list ap)
{
    size_t size = 1000;
    char *p, *q;
    int n;

    p = malloc (size);
    if (!p) return ((void*)0);
    while (1) {
        n = vsnprintf (p, size, fmt, ap);
        if (n < 0) size *= 2;
        else if ((unsigned)n >= size) size = n+1;
        else break;
        q = realloc (p, size);
        if (!q) {
          free (p);
          return ((void*)0);
       }
       p = q;
    }
    if (lenp) *lenp = n;
    return p;
}
