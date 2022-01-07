
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Extent {char* buf; size_t size; } ;


 int DPRINTF (int ) ;
 int STR_xread () ;
 int exit (int) ;

__attribute__((used)) static void



xread(struct Extent *x, char *buf, size_t count)
{
    char *p=x->buf, *q=buf;
    size_t j;
    DPRINTF((STR_xread(), x, x->size, x->buf, buf, count));
    if (x->size < count) {
        exit(127);
    }
    for (j = count; 0!=j--; ++p, ++q) {
        *q = *p;
    }
    x->buf += count;
    x->size -= count;
}
