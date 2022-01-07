
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary_entry {struct dictionary_entry* next; int value; int key; } ;
struct dictionary {int num_entries; int extra; int (* destroy ) (int ,int ,int ) ;} ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct dictionary_entry*) ;
 int TRACE (char*,struct dictionary*,void const*) ;
 struct dictionary_entry** dictionary_find_internal (struct dictionary*,void const*) ;
 int stub1 (int ,int ,int ) ;

void dictionary_remove(struct dictionary *d, const void *k)
{
    struct dictionary_entry **prior, *temp;

    TRACE("(%p, %p)\n", d, k);
    if (!d)
        return;
    if ((prior = dictionary_find_internal(d, k)))
    {
        temp = *prior;
        if (d->destroy)
            d->destroy((*prior)->key, (*prior)->value, d->extra);
        *prior = (*prior)->next;
        HeapFree(GetProcessHeap(), 0, temp);
        d->num_entries--;
    }
}
