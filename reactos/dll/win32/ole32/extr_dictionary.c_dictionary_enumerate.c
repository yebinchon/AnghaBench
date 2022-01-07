
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary_entry {int value; int key; struct dictionary_entry* next; } ;
struct dictionary {int extra; struct dictionary_entry* head; } ;
typedef int (* enumeratefunc ) (int ,int ,int ,void*) ;


 int TRACE (char*,struct dictionary*,int (*) (int ,int ,int ,void*),void*) ;

void dictionary_enumerate(struct dictionary *d, enumeratefunc e, void *closure)
{
    struct dictionary_entry *p;

    TRACE("(%p, %p, %p)\n", d, e, closure);
    if (!d)
        return;
    if (!e)
        return;
    for (p = d->head; p; p = p->next)
        if (!e(p->key, p->value, d->extra, closure))
            break;
}
