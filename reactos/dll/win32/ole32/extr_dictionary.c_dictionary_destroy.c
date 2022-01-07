
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary_entry {int extra; int value; int key; int (* destroy ) (int ,int ,int ) ;struct dictionary_entry* next; struct dictionary_entry* head; } ;
struct dictionary {int extra; int value; int key; int (* destroy ) (int ,int ,int ) ;struct dictionary* next; struct dictionary* head; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct dictionary_entry*) ;
 int TRACE (char*,struct dictionary_entry*) ;
 int stub1 (int ,int ,int ) ;

void dictionary_destroy(struct dictionary *d)
{
    TRACE("(%p)\n", d);
    if (d)
    {
        struct dictionary_entry *p;

        for (p = d->head; p; )
        {
            struct dictionary_entry *next = p->next;

            if (d->destroy)
                d->destroy(p->key, p->value, d->extra);
            HeapFree(GetProcessHeap(), 0, p);
            p = next;
        }
        HeapFree(GetProcessHeap(), 0, d);
    }
}
