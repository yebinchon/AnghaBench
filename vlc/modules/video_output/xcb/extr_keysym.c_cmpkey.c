
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keysym {scalar_t__ xsym; } ;



__attribute__((used)) static int cmpkey (const void *va, const void *vb)
{
    const struct keysym *ka = va, *kb = vb;

    if (ka->xsym > kb->xsym)
        return +1;
    if (ka->xsym < kb->xsym)
        return -1;
    return 0;
}
