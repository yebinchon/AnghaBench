
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {struct inf_file* next; } ;


 struct inf_file* InterlockedCompareExchangePointer (void**,struct inf_file*,int *) ;

__attribute__((used)) static void append_inf_file( struct inf_file *parent, struct inf_file *child )
{
    struct inf_file **ppnext = &parent->next;
    child->next = ((void*)0);

    for (;;)
    {
        struct inf_file *next = InterlockedCompareExchangePointer( (void **)ppnext, child, ((void*)0) );
        if (!next) return;
        ppnext = &next->next;
    }
}
