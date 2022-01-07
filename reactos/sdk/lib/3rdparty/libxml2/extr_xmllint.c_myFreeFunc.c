
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlMemFree (void*) ;

__attribute__((used)) static void
myFreeFunc(void *mem)
{
    xmlMemFree(mem);
}
