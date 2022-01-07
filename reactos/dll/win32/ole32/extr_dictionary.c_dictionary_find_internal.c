
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary_entry {struct dictionary_entry* next; int key; } ;
struct dictionary {scalar_t__ (* comp ) (void const*,int ,int ) ;int extra; struct dictionary_entry* head; } ;


 int assert (struct dictionary*) ;
 scalar_t__ stub1 (void const*,int ,int ) ;
 scalar_t__ stub2 (void const*,int ,int ) ;

__attribute__((used)) static struct dictionary_entry **dictionary_find_internal(struct dictionary *d,
 const void *k)
{
    struct dictionary_entry **ret = ((void*)0);
    struct dictionary_entry *p;

    assert(d);

    if (d->head && d->comp(k, d->head->key, d->extra) == 0)
        ret = &d->head;
    for (p = d->head; !ret && p && p->next; p = p->next)
    {
        if (d->comp(k, p->next->key, d->extra) == 0)
            ret = &p->next;
    }
    return ret;
}
