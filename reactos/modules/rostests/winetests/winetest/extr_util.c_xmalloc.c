
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_FATAL ;
 void* malloc (size_t) ;
 int report (int ,char*) ;

void *xmalloc (size_t len)
{
    void *p = malloc (len);

    if (!p) report (R_FATAL, "Out of memory.");
    return p;
}
