
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_FATAL ;
 void* realloc (void*,size_t) ;
 int report (int ,char*) ;

void *xrealloc (void *op, size_t len)
{
    void *p = realloc (op, len);

    if (len && !p) report (R_FATAL, "Out of memory.");
    return p;
}
