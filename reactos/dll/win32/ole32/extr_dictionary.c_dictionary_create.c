
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {scalar_t__ num_entries; int * head; void* extra; int destroy; scalar_t__ comp; } ;
typedef int destroyfunc ;
typedef scalar_t__ comparefunc ;


 int GetProcessHeap () ;
 struct dictionary* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,struct dictionary*,...) ;

struct dictionary *dictionary_create(comparefunc c, destroyfunc d, void *extra)
{
    struct dictionary *ret;

    TRACE("(%p, %p, %p)\n", c, d, extra);
    if (!c)
        return ((void*)0);
    ret = HeapAlloc(GetProcessHeap(), 0, sizeof(struct dictionary));
    if (ret)
    {
        ret->comp = c;
        ret->destroy = d;
        ret->extra = extra;
        ret->head = ((void*)0);
        ret->num_entries = 0;
    }
    TRACE("returning %p\n", ret);
    return ret;
}
