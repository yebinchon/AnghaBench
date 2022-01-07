
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary_entry {struct dictionary_entry* next; void* value; void* key; } ;
struct dictionary {int num_entries; struct dictionary_entry* head; int extra; int (* destroy ) (void*,void*,int ) ;} ;


 int GetProcessHeap () ;
 struct dictionary_entry* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,struct dictionary*,void const*,void const*) ;
 struct dictionary_entry** dictionary_find_internal (struct dictionary*,void const*) ;
 int stub1 (void*,void*,int ) ;

void dictionary_insert(struct dictionary *d, const void *k, const void *v)
{
    struct dictionary_entry **prior;

    TRACE("(%p, %p, %p)\n", d, k, v);
    if (!d)
        return;
    if ((prior = dictionary_find_internal(d, k)))
    {
        if (d->destroy)
            d->destroy((*prior)->key, (*prior)->value, d->extra);
        (*prior)->key = (void *)k;
        (*prior)->value = (void *)v;
    }
    else
    {
        struct dictionary_entry *elem = HeapAlloc(GetProcessHeap(), 0,
                                            sizeof(struct dictionary_entry));

        if (!elem)
            return;
        elem->key = (void *)k;
        elem->value = (void *)v;
        elem->next = d->head;
        d->head = elem;
        d->num_entries++;
    }
}
