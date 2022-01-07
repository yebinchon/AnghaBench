
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* buf; size_t size; } ;
typedef TYPE_1__ Extent ;


 int DPRINTF (char*,TYPE_1__*,size_t,unsigned char*,void*,size_t) ;
 int exit (int) ;

__attribute__((used)) static void
xread(Extent *x, void *buf, size_t count)
{
    unsigned char *p=x->buf, *q=buf;
    size_t j;
    DPRINTF("xread %%p(%%x %%p) %%p %%x\\n", x, x->size, x->buf, buf, count);
    if (x->size < count) {
        DPRINTF("xreadfail %%p(%%x %%p) %%p %%x\\n",
            x, x->size, x->buf, buf, count);
        exit(127);
    }
    for (j = count; 0!=j--; ++p, ++q) {
        *q = *p;
    }
    x->buf += count;
    x->size -= count;
}
